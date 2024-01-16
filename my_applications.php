<?php include 'db_connect.php' ?>
<style>
	td p {
		margin:unset;
	}
</style>
<div class="container-fluid">
	<div class="card">
								<div class="card-header">
									<h5 class="card-title">Danh sách phiếu thu chi</h5>
									
								</div>
								<div class="table-responsive">
									<table class="table mb-0">
									<thead>
										<tr>
							<th>#</th>
							<th>Ngày</th>
							<th>Thông tin phiếu</th>
							<th>Trạng thái</th>
							<th>Số tiền</th>
							<th>Người duyệt</th>
							<th>Ngày duyệt</th>
							<th>Hành động</th>
						</tr>
					</thead>
					<tbody>
					<?php 
						$i = 1;
						$types = $conn->query("SELECT * FROM leave_type");
						while($row=$types->fetch_assoc()){
							$lt[$row['id']] = ucwords($row['name']);
						}
						$qry = $conn->query("SELECT * FROM leave_list where  `type` BETWEEN 1 AND 3 and employee_id= ".$_SESSION['details']['id']." ");
						while($row=$qry->fetch_assoc()):
							$action_by = 'N/A';
							if($row['status'] > 0){
								$emp = $conn->query("SELECT *,concat(firstname,' ',middlename,' ' ,lastname) as name from employee_details where id = ".$row['approved_by']);
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
								<p>Tháng: <b><?php echo $lt[$row['leave_type_id']] ?></b></p>
								<p>Lí do: <b><?php  echo ($row['reason']) ?></b></p>
								<?php if($row['type'] == 2): ?>
									<p>loại Chi: <b>Khách hàng</b></p>
									<?php
										$emp = $conn->query("SELECT *  FROM `customer` WHERE `makh`= '".$row['customer_id']."'");
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
								<?php endif; ?>
							</td>
							<td class="text-center">
								<?php if($row['status'] == 0): ?>
									<span class="badge bg-primary">Chờ duyệt</span>
								<?php elseif($row['status'] == 1): ?>
									<span class="badge bg-success">Đã duyệt</span>
								<?php elseif($row['status'] == 2): ?>
									<span class="badge bg-success">Từ chối</span>
								<?php endif; ?>
							</td>
							<td>
							<?php echo $row['money'] ?>
						</td>
							<td>
								<?php echo $action_by ;
								?>
							</td>
							<td><?php echo $row['status'] > 0 ? date("d/m/Y",strtotime($row['date_approved'])) : 'N/A' ?></td>
							<td class="text-center">
								<button class="btn btn-sm btn-outline-primary edit_leave" type="button" data-id="<?php echo $row['id'] ?>" >Sửa</button>
								<button class="btn btn-sm btn-outline-danger delete_leave" type="button" data-id="<?php echo $row['id'] ?>">Xóa</button>
							</td>
						</tr>
					<?php endwhile;?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<script>
	$('.edit_leave').click(function(){
		var link = "./index.php?page=manage_leave&id="+$(this).attr('data-id');
		location.replace(link)
		
	})
	$('.delete_leave').click(function(){
		delete_leave($(this).attr('data-id'))
		
	})
	function delete_leave($id){
		start_load()
		$.ajax({
			url:'ajax.php?action=delete_leave',
			method:'POST',
			data:{id:$id},
			success:function(resp){
				if(resp==1){
					alert_toast("đã xóa phiếu chi",'success')
					setTimeout(function(){
						location.reload()
					},1500)

				}
			}
		})
	}
	$('table').dataTable();
</script>