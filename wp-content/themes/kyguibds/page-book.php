<?php
/**
 * Template Name: Page Ký Gửi
 * @package WordPress
 * @subpackage nnDuy
 * @since News_nnDuy
 */

get_header(); ?>

<section class="main_content page_contact">
	<div class="container">
		<div class="content_sum_book">
			<h1 class="title_hea_h1">Hãy liên hệ với chúng tôi ngay hôm nay.!</h1>
			<h3 class="title_hea_h3">"Để sản phẩm ký gửi của bạn được bán ra nhanh nhất với giá tốt nhất"</h3>
			<div class="box_contact_book">
				<div class="box_col box_col_01">
					<div class="step_box_book">
						<h5 class="heading_ti">Quy trình ký gửi</h5>
						<div class="box_book_step">
							<div class="font_bold col_chan"><strong>BƯỚC 1:</strong> Tiếp nhận yêu cầu ký gửi bất động sản:</div>
							<p>- Điền đầy đủ thông tin liên hệ vào form bên cạnh.</p>
							<p class="font_bold">Nội dung gửi bao gồm:</p>
							<p><i>+ Loại nhà đất, diện tích, giá bán,hướng...</i></p>
							<p><i>+ Hướng nhà, số tầng, số phòng [khách-ngủ-bếp]...</i></p>
							<p class="font_bold">(Cung cấp qua Zalo hoặc Email)</p>
							<p>- Cung cấp ảnh chụp thực tế sản phẩm.</p>
							<p>- Bản photo giấy chứng nhận quyền sử dụng đất.</p>
							<p>- Bản photo các tài sản gắn liền với sản phẩm ký gửi.</p>
							<div class="font_bold col_chan"><strong>BƯỚC 2:</strong> Xử lý và lấy thêm thông tin</div>
							<p>- Xử lý & Phân loại sản phẩm ký gửi.</p>
							<p>- Báo giá dịch vụ ký gửi dựa trên giá trị sản phẩm.</p>
							<p>- Ký hợp đồng môi giới dựa trên thỏa thuận hai bên.</p>
							<div class="font_bold col_chan"><strong>BƯỚC 3:</strong> Marketing và tìm kiếm khách hàng</div>
							<p>- Xây dựng kế hoạch Marketing, tìm kiếm khách hàng.</p>
							<p>- Dẫn khách hàng tới xem trực tiếp sản phẩm ký gửi.</p>
							<p>- Báo giá & tư vấn các thủ tục pháp lý.</p>
							<div class="font_bold col_chan"><strong>BƯỚC 4:</strong> Bàn giao Giấy tờ nhà & Nhận Hoa Hồng:</div>
							<p>- Hộ trợ làm giấy tờ nhà đất cho khách hàng.</p>
							<p>- Nhận Hoa Hồng Môi giới khi giao dịch thành công.</p>
						</div>
					</div>
				</div>
				<div class="box_col box_col_02">
					<div class="">
						<div class="box_book">
							<?php echo do_shortcode('[mwform_formkey key="2557"]');?>
						</div>
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
