<?php
/**
 * Template Name: Page Liên Hệ
 * @package WordPress
 * @subpackage nnDuy
 * @since News_nnDuy
 */

get_header(); ?>

<section class="main_content page_contact">
	<div class="container">
		<div class="content_sum">
			<div class="box_contact">
				<div class="box_col box_col_01">
					<div class="box_sum_info">
						<h1 class="title">KÝ GỬI NHÀ ĐẤT ĐÀ NẴNG</h1>
						<ul>
							<li class="local">
								<div>
									<h2>
										<i class="fa fa-map-marker" aria-hidden="true"></i> Địa chỉ</h2>
									<p>04 Tân An 1 - Hòa Cường Bắc - Hải Châu - Đà Nẵng</p>
								</div>
							</li>
							<li class="phone">
								<div>
									<h2>
										<i class="fa fa-phone" aria-hidden="true"></i>Điện thoại</h2>
									<p>0869906070</p>
								</div>
							</li>
							<li class="email">
								<div>
									<h2><i class="fa fa-envelope" aria-hidden="true"></i>Email</h2>
									<p>cskh@kyguinhadat43.com</p>
								</div>
							</li>
							<li class="website">
								<div>
									<h2>
									<i class="fa fa-globe" aria-hidden="true"></i>Website</h2>
									<p>www.kyguinhadat43.com</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="box_col box_col_02">
					<div class="heading_title">
						<h3>Gửi thông điệp</h3>
					</div>
					<div class="box_contact_form">
						<?php echo do_shortcode('[mwform_formkey key="800"]'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
	$(document).ready(function () {
		var he_co_01 = $('.box_col_01').outerHeight();
		var he_co_02 = $('.box_col_02').outerHeight();
		if(he_co_01 > he_co_02){
			$('.box_col_02').css('height',he_co_01);
		}else{
			$('.box_col_01').css('height',he_co_02);
		}
	});
</script>
<?php get_footer();?>
