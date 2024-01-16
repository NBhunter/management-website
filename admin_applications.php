<?php include 'db_connect.php' ?>
<style>
	td p {
		margin:unset;
	}
</style>
<div class="container-fluid">
<div class="card col-lg-12">
			<div class="card-header">Danh sách phiếu thu chi</div>
			<div class="card-body">
				<table class="table table-bordered col-md-12">
					<thead>
						<tr>
							<th>#</th>
							<th>Số phiếu</th>
							<th>Ngày </th>
							<th>Người lập</th>
							<th>Bộ phận</th>
							<th>Đối tượng</th>
							<th>Số tiền</th>
							<th>lí do</th>
							<th>Tồn quỹ</th>
							<th>Người duyệt</th>
							<th>Ngày thu/chi</th>
						</tr>
					</thead>
					<tbody>
					    <?php if($quy ==NULL) $quy=10000000; ?>
						<?php 
						$i = 1;
						$types = $conn->query("SELECT * FROM leave_type");
						while($row=$types->fetch_assoc()){
							$lt[$row['id']] = ucwords($row['name']);
						}
						if($_SESSION['details']['type'] == 1)
						$where = '';
						if($_SESSION['details']['type'] == 2)
						$where = "and e.department_id = '".$_SESSION['details']['department_id']."' " ;
						if($_SESSION['details']['type'] == 3)
						$where = "and e.manager_id = '".$_SESSION['details']['id']."' " ;
						if($_SESSION['details']['type'] == 4)
							$where = "and e.supervisor_id = '".$_SESSION['details']['id']."' " ;


						$qry = $conn->query("SELECT ll.*,concat(e.lastname,', ',e.firstname,' ',e.middlename) as name,e.employee_id as eID FROM leave_list ll inner join employee_details e on e.id = ll.employee_id where ll.employee_id != '".$_SESSION['details']['id']."' $where  ");
						while($row=$qry->fetch_assoc()):
							$action_by = 'N/A';
							if($row['status'] > 0){
								$emp = $conn->query("SELECT *,concat(firstname,' ',middlename,' ',lastname) as name from employee_details where id = ".$row['approved_by']);
								if($emp->num_rows > 0 ){
									$action_by = ucwords($emp->fetch_array()['name']);
								}
							}
						?>
						<tr>
							<td class="text-center"><?php echo $i++ ?></td>
							<td>
								<?php echo date("d/m/Y",strtotime($row['date_from'])) ?>
							</td>
							<td>
								<p>Nhân viên: <b><?php echo ucwords($row['name']). " (".$row['eID'].")" ?></b></p>
								<p>Lí do: <b><?php  echo ($row['reason']) ?></b></p>
								<p>Quỹ:<b><?php  if($row['status'] == 1){if($row['type'] == 2|| $row['type'] == 1||$row['type'] == 3) {$quy=$quy-$row['money'];} elseif($row['type'] == 4|| $row['type'] ==5||$row['type'] == 6){$quy=$quy+$row['money'];};} echo $quy; ?></b></p>
								<?php if($row['type'] == 2): ?>
									<p>loại Chi: <b>Khách hàng</b></p>
									<?php
										$emp = $conn->query("SELECT *  FROM `supplier` WHERE `id`= '".$row['supplier_id']."'");
								if($emp->num_rows > 0 ){
										$customer = $emp->fetch_assoc();
									}
									?>
									<p>Tên khách hàng: <b><?php  echo ($customer['tenkh']) ?></b></p>
									<p>Địa chỉ: <b><?php  echo ($customer['diachi']) ?></b></p>
								<?php   elseif($row['type'] == 3): ?>
									<?php 
										$emp = $conn->query("SELECT *  FROM `supplier` WHERE `id`= '".$row['supplier_id']."'");
								if($emp->num_rows > 0 ){
										$supplier = $emp->fetch_assoc();
									}
									?>
									<p>loại Chi: <b>Nhà cung cấp</b></b></p>
									<p>Tên nhà cung cấp: <b><?php  echo ($supplier['sup_name']) ?></b></p>
									<p>Địa chỉ: <b><?php  echo ($supplier['sup_address']) ?></b></p>
									<?php  elseif($row['type'] == 1): ?>
									<p>loại: <b>Chi Khác</b></p>
									
									<?php  elseif($row['type'] == 4): ?>
									<p>loại: <b>Thu Khác</b></p>
									
									<?php  elseif($row['type'] == 5): ?>
									<p>loại Thu: <b>Khách hàng</b></p>
									<?php
										$emp = $conn->query("SELECT *  FROM `customer` WHERE `makh`= ".$row['customer_id']);
								if($emp->num_rows > 0 ){
										$customer = $emp->fetch_assoc();
									}
									?>
									<p>Tên khách hàng: <b><?php  echo ($customer['tenkh']) ?></b></p>
									<p>Địa chỉ: <b><?php  echo ($customer['diachi']) ?></b></p>
								<?php   elseif($row['type'] == 6): ?>
									<?php 
										$emp = $conn->query("SELECT *  FROM `supplier` WHERE `id`= ".$row['supplier_id']);
								if($emp->num_rows > 0 ){
										$supplier = $emp->fetch_assoc();
									}
									?>
									<p>loại Thu: <b>Nhà cung cấp</b></b></p>
									<p>Tên nhà cung cấp: <b><?php  echo ($supplier['sup_name']) ?></b></p>
									<p>Địa chỉ: <b><?php  echo ($supplier['sup_address']) ?></b></p>
								<?php endif; ?>
							</td>
							<td>
								<?php echo $row['money'] ?>
							</td>
							<td class="text-center">
								<?php if($row['status'] == 0): ?>
									<span class="badge badge-primary">Chờ duyệt</span>
								<?php elseif($row['status'] == 1): ?>
									<span class="badge badge-success">Đã duyệt</span>
								<?php elseif($row['status'] == 2): ?>
									<span class="badge badge-success">Từ chối</span>
								<?php endif; ?>
							</td>
							<td>
								<?php echo $action_by ?>
							</td>
							<td><?php echo $row['status'] > 0 ? date("d/m/Y",strtotime($row['date_approved'])) : 'N/A' ?></td>
						</tr>
					<?php endwhile;?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<script>
	$('.approved_leave').click(function(){
		_conf("Are you sure to approve this leave application?","action_leave",[$(this).attr('data-id'),1])
		
	})
	$('.decline_leave').click(function(){
		_conf("Are you sure to decline this leave application?","action_leave",[$(this).attr('data-id'),2])
	})
	function action_leave($id,$status){
		start_load()
		$.ajax({
			url:'ajax.php?action=action_leave',
			method:'POST',
			data:{id:$id,status:$status},
			success:function(resp){
				if(resp==1){
					alert_toast("Leave application succesffuly updated",'success');
					setTimeout(function(){
						location.reload()
					},1500)

				}
			}

		})
	}
</script>