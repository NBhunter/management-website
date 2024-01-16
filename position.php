<?php include('db_connect.php');?>

<div class="col-lg-12">
		<div class="row mb-4 mt-4">
			<div class="col-md-12">
				
			</div>
		</div>
		<div class="row">
			<!-- FORM Panel -->

			<!-- Table Panel -->
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<b>Danh sách chức vụ</b>
						<span class="">

							<button class="btn btn-primary btn-block btn-sm col-sm-2 float-right" type="button" id="new_position">
					<i class="fa fa-plus"></i> Thêm chức vụ</button>
				</span>
					</div>
					<div class="card-body">
						<table class="table table-condensed table-hover">
							<thead>
								<tr>
									<th class="text-center">#</th>
									<th class="">Name</th>
									<th class="">Department</th>
									<th class="text-center">Action</th>
								</tr>
							</thead>
							<tbody>
								<?php 
								$i = 1;
								$dname[0] = "Unset";
								$department = $conn->query("SELECT * FROM department");
								while($row=$department->fetch_assoc()):
									$dname[$row['id']] = ucwords($row['name']);
								endwhile;
								$position = $conn->query("SELECT * FROM position order by id asc");
								while($row=$position->fetch_assoc()):
									$department = isset($dname[$row['department_id']]) ? $dname[$row['department_id']] : "Department has been deleted.";
								?>
								<tr>
									<td class="text-center"><?php echo $i++ ?></td>
									
									<td class="">
										 <p><b><?php echo ucwords($row['name']) ?></b></p>
										 
									</td>
									<td>
										<?php echo $department ?>
									</td>
									
								
									<td class="text-center">
										<button class="btn btn-sm btn-outline-primary edit_position" type="button" data-id="<?php echo $row['id'] ?>" >Edit</button>
										<button class="btn btn-sm btn-outline-danger delete_position" type="button" data-id="<?php echo $row['id'] ?>">Delete</button>
									</td>
								</tr>
								<?php endwhile; ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- Table Panel -->
		</div>
	</div>	

</div>
<style>
	
	td{
		vertical-align: middle !important;
	}
	td p{
		margin: unset
	}
	img{
		max-width:100px;
		max-height: 150px;
	}
</style>
<script>
	$('#new_position').click(function(){
		location.replace("index.php?page=manage_position")
	})
	
	$('.edit_position').click(function(){
		var link = "./index.php?page=manage_position&id="+$(this).attr('data-id');
		location.replace(link)
		
	})
	$('.delete_position').click(function(){
		delete_position($(this).attr('data-id'))
	})
	
	function delete_position($id){
		start_load()
		$.ajax({
			url:'ajax.php?action=delete_position',
			method:'POST',
			data:{id:$id},
			success:function(resp){
				if(resp){
					resp = JSON.parse(resp);
					if(resp.status == 1){
						alert_toast("Data successfully saved",'success')
						setTimeout(function(){
							location.replace("index.php?page=position")
						},1500)
					}else{
						$('#msg').html('<div class="alert alert-danger">'+resp.msg+'</div>')
						end_load()
					}
					
				}
			}
		})
	}
	$(document).ready(function(){
		$('table').dataTable()
	})
</script>