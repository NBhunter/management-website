<?php include 'db_connect.php' ?>
<?php 
if(isset($_GET['id'])){
	$qry = $conn->query("SELECT * FROM de_xuat  where id=".$_GET['id']);
	foreach($qry->fetch_array() as $k =>$v){
		$$k = $v;
	}
}

?>
<div class="container-fluid">
	<div class="col-lg-12">
		<form action="" id="manage-dexuat" >
			<input type="hidden" name="id" value="<?php $t=time();
 echo isset($id) ? $id : '' ?>">
			<input type="hidden" name="type" value="<?php echo isset($type) ? $type : '2' ?>">
			<div class="form-group">
					<label for="" class="control-label">Ngày</label>
					<input type="date" class="form-control" name="Ngaytaophieu" value="<?php echo isset($Ngaytaophieu) ? date("Y-m-d",strtotime($Ngaytaophieu)) : '' ?>">
				</div>
			<div class="on-ltchange" >
			
					<div class="form-group">
					<label for="" class="control-label">bộ phận</label>
					<select name="bophan" id="bophan" class="custom-select" required>
					<option value=""></option>
					<?php 
					$lt = $conn->query("SELECT * FROM department order by name asc");
					while($row=$lt->fetch_array()):
					?>
					<option value="<?php echo $row['id'] ?>" <?php echo isset($bophan) && $bophan == $row['id'] ? "selected" : '' ?>><?php echo $row['name'] ?></option>
					<?php endwhile; ?>
				</select>	
				</div>
					<div class="form-group">
					<label for="" class="control-label">Số tiền</label>
					<textarea name="kinhphi" cols="30" rows="2" class="form-control"><?php echo isset($kinhphi) ? $kinhphi : '' ?></textarea>
					</div>
				<div class="form-group">
					<label for="" class="control-label">Ngày bắt đầu</label>
					<input type="date" class="form-control" name="thoigianbatdau" value="<?php echo isset($thoigianbatdau) ? date("Y-m-d",strtotime($thoigianbatdau)) : '' ?>">
				</div>
				<div class="form-group">
					<label for="" class="control-label">Ngày kết thúc</label>
					<input type="date" class="form-control" name="thoigianketthuc" value="<?php echo isset($thoigianketthuc) ? date("Y-m-d",strtotime($thoigianketthuc)) : '' ?>">
				</div>
				<div class="form-group">
					<label for="" class="control-label">nội dung</label>
					<textarea name="noidung" cols="30" rows="2" class="form-control"><?php echo isset($noidung) ? $noidung : '' ?></textarea>
				</div>
				
				</div>
			</div>
		</form>
	</div>
</div>
<script>
	$('table').dataTable();
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
	$('#manage-dexuat').submit(function(e){
	// 	$customer_id='';
	// 	if( document.getElementById("browser").value != '')
	// {
	// 	$customer_id =  document.getElementById("browser").value ;
		
	// }
	// alert($customer_id);
		e.preventDefault()
		if($('.err-msg').length > 0)
			return false;
		start_load()
		$.ajax({
			url:'ajax.php?action=save_dexuat',
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