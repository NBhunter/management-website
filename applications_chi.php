<?php include 'db_connect.php' ?>
<style>
	td p {
		margin:unset;
	}
</style>
<div class="container-fluid">
	<div class="card">
								<div class="card-header">
									<h5 class="card-title">Danh sách phiếuchi</h5>
									<a href="xuly.php" class ="btn btn-success"><i clas ="dwn"></i>export</a>
								</div>
								<div class="table-responsive">
									<table class="table mb-0">
									<thead>
										<tr>
							<th>#</th>
							<th  class="text-center">Ngày</th>
							<!--<th  class="text-center">Người lập</th>-->
			
							<th  class="text-center">Đối tượng</th>
							<th  class="text-center">Số tiền</th>
							<th  class="text-center">Lí do</th>
							<th  class="text-center">Duyệt đề xuất</th>
							<!-- <th>Hành động</th> -->
							<th  class="text-center">Trạng Thái Chi</th>
							<?php if($_SESSION['login_id']==14):?>
							<th  class="text-center">Duyệt Chi</th>
							<?php endif;?>
							<th  class="text-center">Duyệt Chi</th>
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


						$qry = $conn->query("SELECT ll.*,concat(e.lastname,', ',e.firstname,' ',e.middlename) as name,e.employee_id as eID FROM leave_list ll inner join employee_details e on e.id = ll.employee_id  $where and ll.type BETWEEN 1 AND 3 ");
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
						<!--	<td class="text-left">
								<p>Nhân viên: <b><?php echo ucwords($row['name']). " (".$row['eID'].")" ?></b></p>
							</td>-->
							<td class="text-left">
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
										$emp = $conn->query("SELECT *  FROM `customer` WHERE `makh`= ".$row['customer_id']);
								if($emp->num_rows > 0 ){
										$customer = $emp->fetch_assoc();
									}
									?>
									<p>Mã khách hàng: <b><?php  echo ($customer['makh']) ?></b></p>
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
									<p>Mã nhà cung cấp: <b><?php  echo ($customer['id']) ?></b></p>
									<p>Tên nhà cung cấp: <b><?php  echo ($supplier['sup_name']) ?></b></p>
									<p>Địa chỉ: <b><?php  echo ($supplier['sup_address']) ?></b></p>
								<?php endif; ?>
							</td>
							<td class="text-center">
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
								echo '-'.currency_format($row['money'])?>
							</td>
						 <td class="text-left">	
								<p><b><?php  echo ($row['reason']) ?></b></p>
						</td>
								<!--<td>
								<p><b><?php /*if($row['status_chi'] == 1) {if (!function_exists('currency_format')) {
														   function currency_format($number, $suffix = 'đ') {
															   if (!empty($number)) {
																   return number_format($number, 0, ',', '.') . "{$suffix}";
															   }
														   }
														}		
									if($row['status'] == 1)
										{if($row['type'] == 2|| $row['type'] == 1||$row['type'] == 3) 
											{$quy=$quy-$row['money'];
											} 
										elseif($row['type'] == 4|| $row['type'] ==5||$row['type'] == 6)
											{$quy=$quy+$row['money'];
																					
											}} 
											echo currency_format($quy);	} else{ echo $quy;} ?></b></p>*/
											?>
							
											</p></b></td>-->
							
											
					
							<td class="text-left">
							<?php if($row['status'] == 0): ?>
									<span class="badge bg-warning">Chờ duyệt</span>
								<?php elseif($row['status'] == 1): ?>
									<span class="badge bg-success">Đã duyệt</span>
								<?php elseif($row['status'] == 2): ?>
									<span class="badge bg-danger">Từ chối</span>
								<?php endif; ?>
								<p><?php echo $action_by ?> </p>
								<p><?php echo $row['status'] > 0 ? date("d/m/Y",strtotime($row['date_approved'])) : 'N/A' ?> </p>
							</td>
							<!-- <td class="text-center">
								<button class="btn btn-sm btn-outline-primary approved_leave" id="approved_leave" type="button" data-id="<?php /* echo $row['id']*/ ?>" >Đồng ý </button>
								<button class="btn btn-sm btn-outline-danger decline_leave" type="button" data-id="<?php /* echo $row['id']*/ ?>">Từ chối</button>
							</td> -->
							<td class="text-left">
							<?php if($row['status_chi'] == 0): ?>
									<span class="badge bg-warning">Chờ thu/chi</span>
								<?php elseif($row['status_chi'] == 1): ?>
									<span class="badge bg-success">Đã thu/chi</span>
								<?php elseif($row['status_chi'] == 2): ?>
									<span class="badge bg-danger">Từ chối thu/chi</span>
								<?php endif; ?>
								<p><?php echo $action_chi ?> </p>
								<p><?php echo $row['status_chi'] > 0 ? date("d/m/Y",strtotime($row['ngayduyet_chi'])) : 'N/A' ?> </p>
							</td>
							<?php if($_SESSION['login_id']==11 ){if($row['type'] == 2|| $row['type'] == 1||$row['type'] == 3): ?>
								<td class="text-center">
							<?php if($row['status'] == 0): ?>
								<button class="btn btn-sm btn-outline-primary approved_leave" id="approved_leave" type="button" data-id="<?php echo $row['id'] ?>" >Đồng ý </button>
								<button class="btn btn-sm btn-outline-danger decline_leave" type="button" data-id="<?php echo $row['id'] ?>">Từ chối</button>
							<?php endif; ?>
							</td>
				
							<?php else:?>
							
							<?php endif;?>
							<td> <?php if($_SESSION['details']['department_id']== 6||$_SESSION['login_id']== 19||$_SESSION['login_id']== 11):?>
							  <a href="xuly_donchitiet.php?id=<?php echo $row['id']?>" class ="btn btn-success"><i clas ="dwn"></i>export</a>
							  <?php endif;?></td>
							<?php }?>
						</tr>
					<?php endwhile;?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<script>
    $('table').dataTable();
	$('.approved_leave').click(function(){
		_conf("Are you sure to approve this leave application?","action_leave",[$(this).attr('data-id'),1])
		
	})
	$('.decline_leave').click(function(){
		_conf("Are you sure to decline this leave application?","action_leave",[$(this).attr('data-id'),2])
	})
	$('.approved_chi').click(function(){
		_conf("Are you sure to approve this Chi application?","action_chi",[$(this).attr('data-id'),1])
		
	})
	$('.decline_chi').click(function(){
		_conf("Are you sure to decline this leave application?","action_chi",[$(this).attr('data-id'),2])
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
	$('.edit_leave').click(function(){
		uni_modal("Edit Leave","manage_leave.php?id="+$(this).attr('data-id'),"mid-large")
		
	})
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
</script>