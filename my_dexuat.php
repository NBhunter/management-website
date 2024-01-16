	<?php include 'db_connect.php' ?>
<style>
	td p {
		margin:unset;
	}
</style>
<div class="container-fluid">
	<div class="card">
								<div class="card-header">
									<h5 class="card-title">Danh sách phiếu đề xuất của tôi</h5>
									
								</div>
								<div class="table-responsive">
									<table class="table mb-0">
									<thead>
										<tr>
							<th>#</th>
							<th>Ngày</th>
							<th>Người lập</th>
							<th>Nội dung</th>
							<th>Số tiền</th>
							<th>bắt đầu</th>
							<th>kết thúc</th>
							<th>Trạng thái</th>
							<th>Trạng thái chi</th>
							<th>Hành động</th>
							
						</tr>
					</thead>
					<tbody>
					    <?php 
						$i = 1;
						$qry = $conn->query("SELECT * FROM de_xuat where tennguoidexuat = ".$_SESSION['details']['id']." ");
						while($row=$qry->fetch_assoc()):
							{
							$action_by = 'N/A';
							if($row['status'] > 0){
								$emp = $conn->query("SELECT *,concat(firstname,' ',middlename,' ',lastname) as name from employee_details where id = ".$row['nguoiduyet']);
								if($emp->num_rows > 0 ){
									$action_by = ucwords($emp->fetch_array()['name']);
								}
							}
						}
							?>
						
						<tr>
						<td class="text-center"> <?php echo $i++; ?></td>
						<td>
								<?php echo date("d/m/Y",strtotime($row['Ngaytaophieu']))  ?>
							</td>
						<td>
							<?php
							
										$emp = $conn->query("SELECT *,concat(firstname,' ',middlename,' ',lastname) as name  FROM `employee_details` WHERE `id`= '".$row['tennguoidexuat']."'");
								if($emp->num_rows > 0 ){
										$tennhanvien = ucwords($emp->fetch_array()['name']);
									}
									$emp = $conn->query("SELECT *  FROM `department` WHERE `id`= '".$row['bophan']."'");
								if($emp->num_rows > 0 ){
										$bophan = ucwords($emp->fetch_array()['name']);
									}
									?>
								<?php echo $tennhanvien ?>
								<br><a>Bộ Phận: <?php echo $bophan ?></a>
							</td>
						<td>
								<?php echo ucwords($row['noidung']) ?>
								<!-- nếu có ảnh thì nó sẽ hiện link -->
								<?php if($row['Anh_HoaDon'] != null) {?> 
									<!-- href là nó sẽ link đến vị trí {local}/HoaDon/anh -->
								</br><a href="HoaDon/<?php echo $row['Anh_HoaDon'] ?>" target="_blank"> xem ảnh </a>
									<?php }?>
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
														  if (!function_exists('currency_format')): {
															function currency_format($number, $suffix = 'đ') {
																if (!empty($number)) {
																	return number_format($number, 0, ',', '.') . "{$suffix}";
																}
															}
														 }	
														endif;	
														 echo currency_format($row['kinhphi']);
							 ?>
							 </td>
							 <td>
								<?php echo date("d/m/Y",strtotime($row['thoigianbatdau'])) ?>
							</td>
							<td>
								<?php echo date("d/m/Y",strtotime($row['thoigianketthuc']));  ?>
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
								<p><?php echo $row['status'] > 0 ? date("d/m/Y",strtotime($row['thoigianduyet'])) : 'N/A' ?> </p>
							</td>
							<td class="text-center">
							<?php if($row['status'] == 2): ?>
								<p >Lý do từ chối phiếu:<?php echo $row['lydo_tc'] ?></p>
							<?php elseif($row['status_chi'] == 0): ?>
									<span class="badge bg-warning">chưa chi</span>
								<?php elseif($row['status_chi'] == 1): ?>
									<span class="badge bg-danger">đã chi tiền</span>
								<?php elseif($row['status_chi'] == 2): ?>
									<span class="badge bg-success">đã nhận tiền</span>
								<?php endif; ?>
								
							</td>
							<td class="text-center">
							<?php if($row['status'] == 0): ?>
								<button class="btn btn-sm btn-outline-primary edit_dexuat" type="button" data-id="<?php echo $row['id'] ?>" >Sửa</button>
								<button class="btn btn-sm btn-outline-danger delete_de" type="button" data-id="<?php echo $row['id'] ?>">Xóa</nầnỳbutton>
								<?php endif; ?>
								<?php if($row['status']==1 && $row['status_chi']==1):?>
				<button class="btn btn-sm btn-success approved_chi" id="approved_chi" type="button" data-id="<?php echo $row['id'] ?>" >Đã Nhận tiền </button>
							  <?php endif;?>
								</td>
							  
						</tr>
						
					<?php 
				
				endwhile;?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<script>
	
	$('.edit_dexuat').click(function(){
		var link = "./index.php?page=manage_dexuat_noidung&id="+$(this).attr('data-id');
		location.replace(link)
})
	$('.delete_dexuat').click(function(){
		delete_dexuat($(this).attr('data-id'))
	})
	$('.approved_chi').click(function(){
		action_chidx($(this).attr('data-id'),2)
		
	})
	function delete_dexuat($id){
		start_load()
		$.ajax({
			url:'ajax.php?action=delete_dexuat',
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
	function action_chidx($id,$status_chi){
		start_load()
		$.ajax({
			url:'ajax.php?action=action_chidx',
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