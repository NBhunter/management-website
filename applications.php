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
									<a href="xuly.php" class ="btn btn-success"><i clas ="dwn"></i>export</a>
								</div>
								<div class="table-responsive">
									<table class="table mb-0">
									<thead>
										<tr>
							<th>#</th>
							<th>Ngày</th>
							<th>Người lập</th>
							<th>Đối tượng</th>
							<th>Số tiền</th>
							<th>Lí do</th>
							<th>Tồn quỹ Dung</th>
							<th>Tồn quỹ Thoa</th>
							<th>Trạng thái</th>
							<th>Hành động</th>
							<th>Trạng Thái Thu Chi</th>
							<?php if($_SESSION['login_id']==14||$_SESSION['login_id']==11):?>
							<th>Duyệt Chi</th>
							<?php endif;?>
							<th>Xuất chi tiết</th>
						</tr>
					</thead>
					<tbody>
						<?php if($quy_van ==NULL) $quy_van=10000000; ?>
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
							{
							$action_by = 'N/A';
							if($row['status'] > 0){
								$emp = $conn->query("SELECT *,concat(firstname,' ',middlename,' ',lastname) as name from employee_details where id = ".$row['approved_by']);
								if($emp->num_rows > 0 ){
									$action_by = ucwords($emp->fetch_array()['name']);
								}
							}
								$action_chi = 'N/A';
								if($row['status_chi'] > 0){
									$emp = $conn->query("SELECT *,concat(firstname,' ',middlename,' ',lastname) as name from employee_details where id = ".$row['duyetchi_id']);
									if($emp->num_rows > 0 ){
										$action_chi = ucwords($emp->fetch_array()['name']);

	
									}
								}
							}
							
						?>
						<tr>
							
							<td class="text-center"><?php if($row['type'] == 2|| $row['type'] == 1||$row['type'] == 3) echo "C".$i++; elseif($row['type'] == 4|| $row['type'] ==5||$row['type'] == 6)echo "T".$i++; ?></td>
							<td>
								<?php echo date("d/m/Y",strtotime($row['date_from'])) ?>
							</td>
							<td  class="text-center">
								<p>Nhân viên: <b><?php echo ucwords($row['name']). " (".$row['eID'].")" ?></b></p>
						 </td>
						 <td class="text-center">
						 <?php if($row['type'] == 2): ?>
									<p>loại Chi: <b>Khách hàng</b></p>
									<?php
										$emp = $conn->query("SELECT *  FROM `customer` WHERE `makh`= '".$row['customer_id']."'");
								if($emp->num_rows > 0 ){
										$customer = $emp->fetch_assoc();
									}
									?>
									<p>Mã khách hàng: <b><?php  echo ($customer['makh']) ?></b></p>
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
									<p>Mã nhà cung cấp: <b><?php  echo ($customer['id']) ?></b></p>
									<p>Tên nhà cung cấp: <b><?php  echo ($supplier['sup_name']) ?></b></p>
									<p>Địa chỉ: <b><?php  echo ($supplier['sup_address']) ?></b></p>
									<?php  elseif($row['type'] == 1): ?>
									<p>loại: <b>Chi Khác</b></p>
									
									<?php  elseif($row['type'] == 4): ?>
									<p>loại: <b>Thu Khác</b></p>
									
									<?php  elseif($row['type'] == 5): ?>
									<p>loại Thu: <b>Khách hàng</b></p>
									<?php
										$emp = $conn->query("SELECT *  FROM `customer` WHERE `makh`= '".$row['customer_id']."'");
								if($emp->num_rows > 0 ){
										$customer = $emp->fetch_assoc();
									}
									?>
									<p>Mã khách hàng: <b><?php  echo ($customer['makh']) ?></b></p>
									<p>Tên khách hàng: <b><?php  echo ($customer['tenkh']) ?></b></p>
									<p>Địa chỉ: <b><?php  echo ($customer['diachi']) ?></b></p>
								<?php   elseif($row['type'] == 6): ?>
									<?php 
										$emp = $conn->query("SELECT *  FROM `supplier` WHERE `id`= '".$row['supplier_id']."'");
								if($emp->num_rows > 0 ){
										$supplier = $emp->fetch_assoc();
									}
									?>
									<p>loại Thu: <b>Nhà cung cấp</b></b></p>
									<p>Mã nhà cung cấp: <b><?php  echo ($customer['id']) ?></b></p>
									<p>Tên nhà cung cấp: <b><?php  echo ($supplier['sup_name']) ?></b></p>
									<p>Địa chỉ: <b><?php  echo ($supplier['sup_address']) ?></b></p>
								<?php endif; ?>
								</td>
								<td>
								<?php
								      /**
														  *
														  * Chuyển đổi chuỗi kí tự thành dạng slug dùng cho việc tạo friendly url.
														  *
														  * @access    public
														  * @param    string
														  * @return    string
														  */
														  if (!function_exists('currency_format')) {
															function currency_format($number, $suffix = 'đ') {
																if (!empty($number)) {
																	return number_format($number, 0, ',', '.') . "{$suffix}";
																}
															}
														 }		
														 if($row['type'] == 2|| $row['type'] == 1||$row['type'] == 3) echo '-'.currency_format($row['money']); else echo '+'.currency_format($row['money']);
							 ?>
							</td>
							<td>
							<p><b><?php  echo ($row['reason']) ?></b></p>
							</td>
							<td>
							<p><b><?php  
								if($row['status_chi'] == 1){
								if($row['duyetchi_id']==18||$row['duyetchi_id']==10){
									if($row['type'] == 2|| $row['type'] == 1||$row['type'] == 3) {$quy_van=$quy_van-$row['money'];} elseif($row['type'] == 4|| $row['type'] ==5||$row['type'] == 6){$quy_van=$quy_van+$row['money'];}; echo currency_format($quy_van); }
								}
									?></b></p>
							
							</td>
							<td>
							<p><b><?php  if($row['status_chi'] == 1){
								if($row['duyetchi_id']==13){
									if($row['type'] == 2|| $row['type'] == 1||$row['type'] == 3) {$quy=$quy-$row['money'];} elseif($row['type'] == 4|| $row['type'] ==5||$row['type'] == 6){$quy=$quy+$row['money'];}; echo currency_format($quy); }
							}
								?></b></p>
							
						</td>
						
							<td class="text-center">
								<?php if($row['status'] == 0): ?>
									<span class="badge bg-primary">Chờ duyệt</span>
								<?php elseif($row['status'] == 1): ?>
									<span class="badge bg-success">Đã duyệt</span>
								<?php elseif($row['status'] == 2): ?>
									<span class="badge bg-danger">Từ chối</span>
								<?php endif; ?>
								<p><?php echo $action_by ?> </p>
								<p><?php echo $row['status'] > 0 ? date("d/m/Y",strtotime($row['date_approved'])) : 'N/A' ?> </p>
							</td>
							<td class="text-center">
							<?php if($row['status'] == 0): ?>
								<button class="btn btn-sm btn-outline-primary approved_leave" id="approved_leave" type="button" data-id="<?php echo $row['id'] ?>" >Đồng ý </button>
								<button class="btn btn-sm btn-outline-danger decline_leave" type="button" data-id="<?php echo $row['id'] ?>">Từ chối</button>
							<?php endif; ?>
							</td>
							<td class="text-center">
								<?php if($row['status_chi'] == 0): ?>
									<span class="badge badge-primary">Chờ thu/chi</span>
								<?php elseif($row['status_chi'] == 1): ?>
									<span class="badge badge-success">Đã thu/chi</span>
								<?php elseif($row['status_chi'] == 2): ?>
									<span class="badge badge-success">Từ chối thu/chi</span>
								<?php endif; ?>
								<p> <?php echo $action_chi ?> </p>
								<p><?php echo $row['status_chi'] > 0 ? date("d/m/Y",strtotime($row['ngayduyet_chi'])) : 'N/A' ?> </p>
							</td>
							<?php if(($_SESSION['login_id']==11 ||$_SESSION['login_id']==14) && $row['status'] == 1)if($row['status'] == 1): if($row['type'] == 2|| $row['type'] == 1||$row['type'] == 3|| $row['type'] == 4|| $row['type'] == 5|| $row['type'] == 6): ?>
							<td><button class="btn btn-sm btn-outline-primary approved_chi" id="approved_chi" type="button" data-id="<?php echo $row['id'] ?>" >Đồng ý </button>
								<button class="btn btn-sm btn-outline-danger decline_leave" type="button" data-id="<?php echo $row['id'] ?>">Từ chối</button></td>
							<?php else:?>
							<td>
							</td>
							<?php endif;?>
							<td>
							  <a href="xuly_donchitiet.php?id=<?php echo $row['id']?>" class ="btn btn-success"><i clas ="dwn"></i>export</a>
							</td>
							<?php endif; ?>
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
		action_leave($(this).attr('data-id'),1)
		
	})
	$('.decline_leave').click(function(){
		action_leave($(this).attr('data-id'),2)
	})
	$('.approved_chi').click(function(){
		action_chi($(this).attr('data-id'),1)
		
	})
	$('.decline_chi').click(function(){
		action_chi($(this).attr('data-id'),1)
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
	function action_chi($id,$status_chi){
		start_load()
		$.ajax({
			url:'ajax.php?action=action_chi',
			method:'POST',
			data:{id:$id,status_chi:$status_chi},
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
	$('table').dataTable();
</script>