<?php include 'db_connect.php' ?>
<?php 
if(isset($_GET['id'])){
	$qry = $conn->query("SELECT * FROM leave_list  where id=".$_GET['id']);
	foreach($qry->fetch_array() as $k =>$v){
		$$k = $v;
	}
}

?>
<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Thêm phiếu thu khách hàng</h5>
								</div>
								<div class="card-body">
									<form id="manage-receipt-customer">
										<div class="row">
										<input type="hidden" name="id" value="<?php $t=time();
 echo isset($id) ? $id : '' ?>">
			<input type="hidden" name="type" value="<?php echo isset($type) ? $type : '5' ?>">
			<div class="form-group">
			<label for="" class="control-label">Tháng</label>
				<select name="leave_type_id" id="leave_type_id" class="custom-select" required>
					<option value=""></option>
					<?php 
					$lt = $conn->query("SELECT * FROM leave_type order by name asc");
					while($row=$lt->fetch_array()):
					?>
					<option value="<?php echo $row['id'] ?>" <?php echo isset($leave_type_id) && $leave_type_id == $row['id'] ? "selected" : '' ?>><?php echo $row['name'] ?></option>
					<?php endwhile; ?>
				</select>
				<small><i>Bạn có quyền: <span id="credits">10</span></i></small>
			</div>
			<div class="on-ltchange" <?php echo isset($id) ? '' : 'style="display: none"' ?>>
			<div class="form-group">
				<br>
					<label for="" class="control-label">Thông tin khách hàng</label>
					<div class="form-group">
					<label for="" class="control-label">Mã khách hàng</label>
					<input type="text" name="customer" list= "browsers" class="form-control">
					<datalist id="browsers">
					<option value=""></option>
					<?php 
					$ct = $conn->query("SELECT * FROM `customer` ");
					while($row=$ct->fetch_array()):
					?>
					<option value="<?php echo $row['makh'] ?>"<?php echo isset($customer_id) && $customer_id == $row['makh'] ? "selected" : '' ?>><?php echo $row['tenkh'] ?></option>
					<?php endwhile; ?>
					</datalist>
				</div>
				
				</div>
				<div class="form-group">
					<label for="" class="control-label">Ngày</label>
					<input type="date" class="form-control" name="date_from" value="<?php echo isset($date_from) ? date("Y-m-d",strtotime($date_from)) : '' ?>">
				</div>
				<div class="form-group">
					<label for="" class="control-label">Số tiền</label>
					<textarea name="money" cols="30" rows="2" class="form-control"><?php echo isset($money) ? $money : '' ?></textarea>
					</div>
				<div class="form-group">
					<label for="" class="control-label">Lí do</label>
					<textarea name="reason" cols="30" rows="2" class="form-control"><?php echo isset($reason) ? $reason : '' ?></textarea>
				</div>
				
				</div>
			</div>
										<button type="submit" class="btn btn-primary">Submit</button>
									</form>
								</div>
							</div>
						</div>
<!-- <div class="container-fluid">
	<div class="col-lg-12">
		<form action="" id="manage-receipt-customer" >
			<input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">
			<input type="hidden" name="type" value="<?php echo isset($type) ? $type : '5' ?>">
			<div class="form-group">
			<label for="" class="control-label">Tháng</label>
				<select name="leave_type_id" id="leave_type_id" class="custom-select" required>
					<option value=""></option>
					<?php 
					$lt = $conn->query("SELECT * FROM leave_type order by name asc");
					while($row=$lt->fetch_array()):
					?>
					<option value="<?php echo $row['id'] ?>" <?php echo isset($leave_type_id) && $leave_type_id == $row['id'] ? "selected" : '' ?>><?php echo $row['name'] ?></option>
					<?php endwhile; ?>
				</select>
				<small><i>Bạn có quyền: <span id="credits">10</span></i></small>
			</div>
			<div class="on-ltchange" <?php echo isset($id) ? '' : 'style="display: none"' ?>>
			<div class="form-group">
				<br>
					<label for="" class="control-label">Thông tin khách hàng</label>
					<div class="form-group">
					<label for="" class="control-label">Mã khách hàng</label>
					<input type="text" name="customer" list= "browsers" class="form-control">
					<datalist id="browsers">
					<option value=""></option>
					<?php 
					$ct = $conn->query("SELECT * FROM `customer` ");
					while($row=$ct->fetch_array()):
					?>
					<option value="<?php echo $row['makh'] ?>"<?php echo isset($customer_id) && $customer_id == $row['makh'] ? "selected" : '' ?>><?php echo $row['tenkh'] ?></option>
					<?php endwhile; ?>
					</datalist>
					<input type=submit value=submit>
				</div>
				
				</div>
				<div class="form-group">
					<label for="" class="control-label">Ngày</label>
					<input type="date" class="form-control" name="date_from" value="<?php echo isset($date_from) ? date("Y-m-d",strtotime($date_from)) : '' ?>">
				</div>
				<div class="form-group">
					<label for="" class="control-label">Số tiền</label>
					<textarea name="money" cols="30" rows="2" class="form-control"><?php echo isset($money) ? $money : '' ?></textarea>
					</div>
				<div class="form-group">
					<label for="" class="control-label">Lí do</label>
					<textarea name="reason" cols="30" rows="2" class="form-control"><?php echo isset($reason) ? $reason : '' ?></textarea>
				</div>
				
				</div>
			</div>
		</form>
	</div>
</div> -->
<script>
	
	$(document).ready(function(){
		if('<?php echo isset($id) ?>' == 1){
			$('#leave_type_id').trigger('change')
		}
	})
	$(document).ready(function () {
      $('#custom').selectize({
          sortField: 'text'
      });
  });
	$('#leave_type_id').change(function(){
		start_load()
		if($('.err-msg').length > 0)
			$('.err-msg').remove()
		var leave_type_id = $(this).val()
		$.ajax({
			url:'ajax.php?action=get_available',
			method:"POST",
			data:{leave_type_id : leave_type_id, id:'<?php echo isset($id) ? $id : '' ?>'},
			success:function(resp){
					$('#credits').html(resp)
					if(resp <=  1){
						$('#leave_type_id').closest('.form-group').append('<div class="alert alert-danger err-msg">You dont have an available credits with the selected leave type.</div>')
						$('.on-ltchange').hide()
					}else{
						$('.on-ltchange').show()
					}
					
			},
			complete:function(){
				end_load()
			}
		})
	})
	$('[name="date_from"],[name="date_to"],[name="type"]').change(function(){
		if($('[name="date_from"]').val() == '' || $('[name="date_to"]').val() == ''){
			return false;
		}
		if($('.err-msg').length > 0)
			$('.err-msg').remove()
		var from = $('[name="date_from"]').val()
		var to = $('[name="date_to"]').val()
		from = new Date(from);
		to = new Date(to)
		if(from.getFullYear() != to.getFullYear()){
			$('[name="date_to"]').closest('.form-group').append('<div class="alert alert-danger err-msg">Date From and To must be the same year.</div>')
			return false;
		}
		// from = from.getFullYear() +'-'+from.getMonth()+'-'+from.getDay();
		// to = to.getFullYear() +'-'+to.getMonth()+'-'+to.getDay();
		// console.log(from,to)
		if(from > to){
			$('[name="date_to"]').closest('.form-group').append('<div class="alert alert-danger err-msg">Selected dates are incorrect.</div>')
		}

		var days = Math.abs(to - from);
			days = Math.ceil(days / (1000*60*60*24));
		var credits = $('#credits').html();
		var type = $('[name="type"]').val();
			days = days / type;
			console.log(days,credits)
			if(credits < days){
				$('[name="date_to"]').closest('.form-group').append('<div class="alert alert-danger err-msg">Selected dates difference is greater that available credits with the selected type.</div>')
			}

	})
	$('#manage-receipt-customer').submit(function(e){
		
		e.preventDefault()
		if($('.err-msg').length > 0)
			return false;
		start_load()
		$.ajax({
			url:'ajax.php?action=save_receipt_customer',
			method:'POST',
			data:$(this).serialize(),
			success:function(resp){
				if(resp == 1){
					alert_toast("Leave application successfully saved",'success');
					setTimeout(function(){
						location.reload()
					},1000)
				}
			}
		})

	});
	function getOptions(isFilter) {
    return {
        enableFiltering: isFilter,
        enableCaseInsensitiveFiltering: isFilter,
        filterPlaceholder: 'Search ...',
        nonSelectedText: 'Check an option!',
        numberDisplayed: 1,
        maxHeight: 400,
    }
}
function getOptions(isFilter) {
    return {
        enableFiltering: isFilter,
        enableCaseInsensitiveFiltering: isFilter,
        filterPlaceholder: 'Search ...',
        nonSelectedText: 'Check an option!',
        numberDisplayed: 1,
        maxHeight: 400,
    }
}

$('#DDLState').multiselect(getOptions(true));
$('#DDLCity').multiselect(getOptions());
</script>