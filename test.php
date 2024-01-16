<?php include 'db_connect.php' ?>
<!-- <?php require 'Classes/PHPExcel.php'?> -->
<style>
	td p {
		margin:unset;
	}
</style>
<div class="container-fluid">
	<div class="col-lg-12">
		<div class="card">
			<div class="card-header">Danh sách phiếu thu chi</div>
			<div class="card-body">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th class="text-center">Số phiếu</th>
							<th class="text-center">Ngày </th>
							<th class="text-center">Người lập</th>
							<th class="text-center">Đối tượng</th>
							<th class="text-center">Số tiền</th>
							<th class="text-center">Lí do</th>
							<th class="text-center">Tồn quỹ</th>
							<th class="text-center">Người Duyệt</th>
							<th class="text-center">Người Thu/chi</th>
                            <th class="text-center">Xuất excel</th>
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
						<?php
						/*if(isset($_POST['btnExport'])){
							$objExcel = new PHPExcel; 
							$objExcel -> setActiveSheetIndex(0);
							$sheet= $objExcel-> getActiveSheetIndex();

                            $rowCount=1;
							$sheet->setCellValue('A'.$rowCount,' Số phiếu');
							$sheet->setCellValue('B'.$rowCount,' Ngày');
							$sheet->setCellValue('C'.$rowCount,' Người lập');
							$sheet->setCellValue('D'.$rowCount,' Bộ phận');
							$sheet->setCellValue('E'.$rowCount,' Đối tượng ');
							$sheet->setCellValue('F'.$rowCount,' Số tiền');
							$sheet->setCellValue('G'.$rowCount,' Lí do');
							$sheet->setCellValue('H'.$rowCount,'Tồn quỹ');
							$sheet->setCellValue('I'.$rowCount,' Người duyệt');
							$sheet->setCellValue('J'.$rowCount,' Người thu/chi');
						  }

                        13:54
						$objWriter= new PHPExcel_Writer_Excel2007($objExcel);
						$filename='export.xlxs';
						$objWriter -> save($filename);
						
						header('Content-Disposition: attachment;filename="'.$filename.'"');
						header('Content-Type: application/vnd.openxmlformatsofficedocument,spreadsheetml.sheet');
						header('Content-Length:' . filesize($filename));
						header('Content-Transfer-Encoding: binary');
						header('Cache-Control: must-revalidate');
						header('Pragma:no-cache');
						readfile($filename);
						return;
						*/
						?>
						<tr>
							<td class="text-center"><?php echo $i++ ?></td>
							<td>
								<?php echo date("d/m/Y",strtotime($row['date_from'])) ?>
							</td>
							<td class="text-center" >
								<p>Nhân viên: <b><?php echo ucwords($row['name']). " (".$row['eID'].")" ?></b></p>
						</td>
						<td class="text-center">	
						<?php if($row['type'] == 2): ?>
									<p>Chi: <b>Khách hàng</b></p>
									<?php
										$emp = $conn->query("SELECT *  FROM `customer` WHERE `makh`= ".$row['customer_id']);
								if($emp->num_rows > 0 ){
										$customer = $emp->fetch_assoc();
									}
									?>
									<p>Tên khách hàng: <b><?php  echo ($customer['tenkh']) ?></b></p>
									<p>Địa chỉ: <b><?php  echo ($customer['diachi']) ?></b></p>
								<?php   elseif($row['type'] == 3): ?>
									<?php 
										$emp = $conn->query("SELECT *  FROM `supplier` WHERE `id`= ".$row['supplier_id']);
								if($emp->num_rows > 0 ){
										$supplier = $emp->fetch_assoc();
									}
									?>
									<p>Chi: <b>Nhà cung cấp</b></b></p>
									<p>Tên nhà cung cấp: <b><?php  echo ($supplier['sup_name']) ?></b></p>
									<p>Địa chỉ: <b><?php  echo ($supplier['sup_address']) ?></b></p>
									<?php  elseif($row['type'] == 1): ?>
									<p><b>Chi Khác</b></p>
									
									<?php  elseif($row['type'] == 4): ?>
									<p><b>Thu Khác</b></p>
									
									<?php  elseif($row['type'] == 5): ?>
									<p>Thu: <b>Khách hàng</b></p>
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
									<p>Thu: <b>Nhà cung cấp</b></b></p>
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
							<p><b><?php  if($row['status'] == 1){if($row['type'] == 2|| $row['type'] == 1||$row['type'] == 3) {$quy=$quy-$row['money'];} elseif($row['type'] == 4|| $row['type'] ==5||$row['type'] == 6){$quy=$quy+$row['money'];};} echo currency_format($quy); ?></b></p>
							</td>
							<td class="text-center">
								<?php if($row['status'] == 0): ?>
									<span class="badge badge-primary">Chờ duyệt</span>
								<?php elseif($row['status'] == 1): ?>
									<span class="badge badge-success">Đã duyệt</span>
								<?php elseif($row['status'] == 2): ?>
									<span class="badge badge-success">Từ chối</span>
								<?php endif; ?>
								<br/><?php echo $action_by ?>
								<br/><?php echo $row['status'] > 0 ? date("d/m/Y",strtotime($row['date_approved'])) : 'N/A' ?>
							</td>
							<td class="text-center">
							<?php if($row['status'] == 0): ?>
									<span class="badge badge-primary">Chờ thu/chi</span>
								<?php elseif($row['status'] == 1): ?>
									<span class="badge badge-success">Đã thu/chi</span>
								<?php elseif($row['status'] == 2): ?>
									<span class="badge badge-success">Từ chối</span>
								<?php endif; ?>
								<br/><?php echo $action_by ?>
								<br/><?php echo $row['status'] > 0 ? date("d/m/Y",strtotime($row['date_approved'])) : 'N/A' ?>
							</td>
							<td class="text-center">
                                      <button name="btnExport" type="submit" > Xuất file </button>
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
		$('table').dataTable();
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
