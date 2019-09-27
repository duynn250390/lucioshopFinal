<?php
/**
 * Template Name: Page Đăng ký thành viên
 * @package WordPress
 * @subpackage nnDuy
 * @since News_nnDuy
 */

get_header(); ?>

<section class="main_content regis">
	<div class="container">
		<div class="content_sum">
			<div class="tile"><h1>ĐĂNG KÝ TÀI KHOẢN</h1></div>
			<div class="bg__sum_regis">
				<?php echo do_shortcode('[mwform_formkey key="385"]'); ?>	
			</div>
			<div class="box_info_notice">
				<p><strong>Chú ý:</strong> thông tin Tên đăng nhập, email, số điện thoại di động không thể thay đổi sau khi đăng ký.</p>
				<p>Chung tôi sẽ xét duyệt tài khoản của bạn và gửi thông tin đăng nhập cũng như quy trình đăng nhập về email mà bạn đã đăng ký.</p>
				<p>Để được trợ giúp vui lòng liên hệ tổng đài CSKH <strong>0869906070</strong> hoặc email <strong>cskh@kyguinhadat43.com</strong></p>
			</div>
		</div>
	</div>
</section>
	<?php get_footer();?>