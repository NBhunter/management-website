<?php include 'db_connect.php' ?>

<script>
$(function() {
  var Accordion = function(el, multiple) {
    this.el = el || {};
    this.multiple = multiple || false;

    // Variables privadas
    var links = this.el.find('.link');
    // Evento
    links.on('click', {el: this.el, multiple: this.multiple}, this.dropdown)
  }

  Accordion.prototype.dropdown = function(e) {
    var $el = e.data.el;
      $this = $(this),
      $next = $this.next();

    $next.slideToggle();
    $this.parent().toggleClass('open');

    if (!e.data.multiple) {
      $el.find('.submenu').not($next).slideUp().parent().removeClass('open');
    };
  } 

  var accordion = new Accordion($('#accordion'), false);
});

	
</script>
<nav id="sidebar" class="sidebar js-sidebar">
			<div class="sidebar-content js-simplebar">
				<a class="sidebar-brand"  href="index.php?page=home" >
          <span class="align-middle">Tonybed</span>
        </a>

				<ul class="sidebar-nav">
				<?php if($_SESSION['login_type'] >1): ?>
					<li class="sidebar-header">
						Quản lý phiếu
					</li>
					
				<?php if($_SESSION['login_id'] == 19): ?>
						<li class="sidebar-item ">
							<a class="sidebar-link nav-all_applications" href="index.php?page=applications">
				<i class="align-middle" data-feather="file-text"></i> <span class="align-middle">Phiếu thu đã lập</span>
				</a>
						</li>
						<?php endif; ?>
	<?php if(($_SESSION['login_id'] == 11)||($_SESSION['login_id'] == 12)||($_SESSION['login_id'] == 13)||($_SESSION['login_id'] == 14)||($_SESSION['login_id'] == 15)||($_SESSION['login_id'] == 16)||($_SESSION['login_id'] == 17)): ?>
						<li class="sidebar-item ">
							<a class="sidebar-link nav-all_applications" href="index.php?page=applications">
				<i class="align-middle" data-feather="file-text"></i> <span class="align-middle">Phiếu đã lập</span>
				</a>
						</li>
						<?php endif; ?>
						<?php 
				$TPs = $conn->query("SELECT * FROM `employee_details` WHERE `user_id`= '".$_SESSION['login_id']."'");
								
				if($TPs->num_rows > 0 ){
					$TPid = $TPs->fetch_assoc();
				}
				if($TPid['department_id'] == 4 || ($_SESSION['login_id'] == 20) || $TPid['type'] ==  1|| $TPid['type'] ==  2): ?>
						<li class="sidebar-item ">
							<a class="sidebar-link nav-all_applications" href="index.php?page=applications_dexuat">
				<i class="align-middle" data-feather="file-text"></i> <span class="align-middle">Phiếu đề xuất đã lập</span>
				</a>
						</li>
						<?php endif; ?>
						<?php if(($_SESSION['login_id'] == 11)||($_SESSION['login_id'] == 19)||($_SESSION['login_id'] == 14)): ?>
					<li class="sidebar-header">
						Lập phiếu Chi
					</li>

					<li class="sidebar-item">
						<a class="sidebar-link" href="index.php?page=manage_leave_customer" id="add_leave_customer">
						<span class='icon-field'><i class="fa fa-plus"></i></span> Lập phiếu chi khách hàng</a>
            </a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="index.php?page=manage_leave_supplier" id="add_leave_supplier">
						<span class='icon-field'><i class="fa fa-plus"></i></span> Lập phiếu chi nhà cung cấp</a>
            </a>
					</li><li class="sidebar-item">
						<a class="sidebar-link" href="index.php?page=manage_leave" id="add_leave">
						<span class='icon-field'><i class="fa fa-plus"></i></span> Lập phiếu chi khác</a>
            </a>
					</li>
					<li class="sidebar-header">
						Lập phiếu thu
					</li>

					<li class="sidebar-item">
						<a class="sidebar-link" href="index.php?page=manage_receipt_customer" id="add_receipt_customer">
						<span class='icon-field'><i class="fa fa-plus"></i></span> Lập phiếu thu khách hàng</a>
            </a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="index.php?page=manage_receipt_repplier" id="add_receipt_repplier">
						<span class='icon-field'><i class="fa fa-plus"></i></span> Lập phiếu thu nhà cung cấp</a>
            </a>
					</li><li class="sidebar-item">
						<a class="sidebar-link" href="index.php?page=manage_receipt" id="add_receipt">
						<span class='icon-field'><i class="fa fa-plus"></i></span> Lập phiếu thu khác</a>
            </a>
					</li>
					<?php endif; ?>
					
					<li class="sidebar-header">
						Lập phiếu đề xuất
					</li>

					<li class="sidebar-item">
						<a class="sidebar-link" href="index.php?page=manage_dexuat" id="add_manage_dexuat">
						<span class='icon-field'><i class="fa fa-plus"></i></span> Lập phiếu </a>
            </a>
					</li>
					<li class="sidebar-header">
						Phiếu của tôi
					</li>
					<?php if(($_SESSION['login_id'] == 11)||($_SESSION['login_id'] == 19)||($_SESSION['login_id'] == 14)): ?>
					<li class="sidebar-item ">
							<a class="sidebar-link nav-all_applications" href="index.php?page=my_applications">
				<i class="align-middle" data-feather="file-text"></i> <span class="align-middle">Phiếu thu chi của tôi</span>
				</a>
						</li>
						<?php endif;?>
						<li class="sidebar-item ">
							<a class="sidebar-link nav-all_applications" href="index.php?page=my_dexuat">
				<i class="align-middle" data-feather="file-text"></i> <span class="align-middle">Phiếu đề xuất của tôi</span>
				</a>
						</li>
						<?php endif;?>
						<?php if($_SESSION['login_type'] == 1): ?>
						<li class="sidebar-item">
						<a class="sidebar-link" href="index.php?page=employee" id="add_receipt">
						<span class='icon-field'><i class="fa fa-users"></i></span> Danh sách ngừoi dùng</a>
            </a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="index.php?page=users" id="add_receipt">
						<span class='icon-field'><i class="fa fa-users"></i></span> Danh sách user</a>
            </a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="index.php?page=department" id="add_receipt">
						<span class='icon-field'><i class="fa fa-users"></i></span> Phòng ban</a>
            </a>
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="index.php?page=position" id="add_receipt">
						<span class='icon-field'><i class="fa fa-users"></i></span> Chức vụ</a>
            </a>
					</li>
							<?php endif; ?>
				</ul>

				
			</div>
		</nav>

<script>
	$('.nav_collapse').click(function(){
		console.log($(this).attr('href'))
		$($(this).attr('href')).collapse()
	})
	$('.nav-<?php echo isset($_GET['page']) ? $_GET['page'] : '' ?>').addClass('active')
	$('#add_leave_customer').click(function(){
		uni_modal("Phiếu chi Khách Hàng mới","manage_leave_customer.php","mid-large")
	})
	$('#add_leave_supplier').click(function(){
		uni_modal("Phiếu chi nhà cung cấp mới","manage_leave_supplier.php","mid-large")
	})
	$('#add_leave').click(function(){
		uni_modal("New Leave Application","manage_leave.php","mid-large")
	})
	$('#add_customer').click(function(){
		uni_modal("Thêm khách hàng mới","manage_customer.php","mid-large")
	})
	$('#import_leave').click(function(){
		uni_modal("Import Excel","import_ThuChi.php","mid-large")
	})
	$('#add_supplier').click(function(){
		uni_modal("Thêm nhà cung cấp mới","manage_supplier.php","mid-large")
	})
	$('#add_receipt_customer').click(function(){
		uni_modal("Phiếu Thu khách hàng mới","manage_receipt_customer.php","mid-large")
	})
	$('#add_receipt_supplier').click(function(){
		uni_modal("Phiếu Thu nhà cung cấp mới","manage_receipt_repplier.php","mid-large")
	})
	$('#add_receipt').click(function(){
		uni_modal("Phiếu Thu  mới","manage_receipt.php","mid-large")
	})
	$('#add_DeXuat').click(function(){
		uni_modal("Thêm đề xuất mới","manage_dexuat.php","mid-large")
	})
</script>
