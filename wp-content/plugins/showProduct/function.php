<?php
/**
 * Plugin Name: showProduct
 * Plugin URI: http://lucioshop.com // Địa chỉ trang chủ của plugin
 * Description: Đây là plusgin show sản phẩm từ CSDL ra Dashboad để quản lý.
 * Version: 1.0.0
 * Author: HeroZuZu // Tên tác giả, người thực hiện plugin này
 * Author URI: http://lucioshop.com // Địa chỉ trang chủ của tác giả
 * License: GPLv2 or later // Thông tin license của plugin, nếu không quan tâm thì bạn cứ để GPLv2 vào đây
 */

function showProduct_setting() {
	register_setting( 'mfpd-settings-group', 'mfpd_option_name' );
}

function mfpd_create_menu() {
	add_menu_page('My First Plugin Settings', 'Đặt hàng', 'administrator', __FILE__, 'mfpd_settings_page',plugins_url('/images/order.png', __FILE__), 1);

	wp_enqueue_script( 'script_pl', plugins_url( 'js/script.js', __FILE__ ) );
	wp_enqueue_style( 'style_pl', plugins_url( 'css/style.css', __FILE__ ) );

	add_action( 'admin_init', 'showProduct_setting' );
}
add_action('admin_menu', 'mfpd_create_menu'); 

function mfpd_settings_page() {
	global $wpdb;

	$query_string = "
	SELECT *
	FROM wp_order
	WHERE active=0
	";
	$results = $wpdb->get_results($query_string);
	?>
	<div class="wrap">
		<header class="heading top_head">
			<h2>Danh sách đặt hàng</h2>
			,<span id="countOrder"> <span id="num_count"></span> Đơn hàng chưa xử lý</span>
		</header>
		<section class="warap">
			<div class="box_table ">
				<div class="list_item_row heading_title">
					<div class="item_row col01">STT</div>
					<div class="item_row col02">Tên khách hàng</div>
					<div class="item_row col03">Số điện thoại</div>
					<div class="item_row col04">Tên sản phẩm</div>
					<div class="item_row col05">Số lượng</div>
					<div class="item_row col06">Quản lý</div>
				</div>
				<?php
				$i = 1;
				foreach ($results as $item) {
					echo '<div class="list_item_row ">';
					echo '<div class="item_row col01">'.$i++.'</div>';
					echo '<div class="item_row col02">'.$item->ho_ten.'</div>';
					echo '<div class="item_row col03">'.$item->so_dien_thoai.'</div>';
					echo '<div class="item_row col04">'.$item->ten_san_pham.'</div>';
					echo '<div class="item_row col05">'.$item->so_luong.'</div>';
					echo '<div class="item_row col06 handle"><ul class="control_handle">';
					echo '<li id="showProducts" class="showProducts show" data-id ="'.$item->id.'">Xem</li>';
					echo '<li class="check" data-check="'.$item->id.'" id="control_check">Đã gửi hàng</li>';
					echo '</ul></div>';
					echo '</div>';
				}
				?>
			</div>
			<script type="text/javascript">
				jQuery(document).ready(function($) {
					$('.showProducts ').click(function(){
						var ID = $(this).attr('data-id');
						$('.modal_show').css({
							'display':'block'
						});
						$('.modal_show').addClass('show');
						$.ajax({
							type: "post",
							dataType: "json",
							url: '<?php echo admin_url('admin-ajax.php'); ?>',
							data: {
                                    action: "get_product_admin", //Tên action
                                    'id_product': ID
                                },
                                context: this,
                                success: function(response) {
                                	var result = response.data;
                                	var html="";
                                	if (response.success) {
                                		$('.dialog_modal .modal_header h3').html(result['result_wp_order'].ten_san_pham);
                                		$('#add_hoten').html(result['result_wp_order'].ho_ten);
                                		$('#add_phone').html(result['result_wp_order'].so_dien_thoai);
                                		$('#add_email').html(result['result_wp_order'].email);
                                		$('#add_local').html(result['result_wp_order'].dia_chi);
                                		$('#add_des').html(result['result_wp_order'].thong_tin);
                                		$('#add_soluong').html(result['result_wp_order'].so_luong);
                                		$('#add_tongtien').html(result['result_wp_order'].tong_tien);

                                		for (var i = 0; i < result['result_wp_order_info'].length; i++) {
                                			// console.log(result['result_wp_order_info'][i]['id']);
                                			html  = html + 
                                			'<div class="cotrol_item">'+
                                			'<div class="item"><span>Size</span>'+ result['result_wp_order_info'][i]['size'] +'</div>'+
                                			'<div class="item" ><span>Color</span>'+ result['result_wp_order_info'][i]['mau'] +'</div></div>'
                                		}
                                		$('.list_pro').html(html);
                                		
                                	} else {
                                		alert('Đã có lỗi xảy ra');
                                	}
                                },
                                error: function(jqXHR, textStatus, errorThrown) {
                                    //Làm gì đó khi có lỗi xảy ra
                                    console.log('The following error occured: ' + textStatus, errorThrown);
                                }
                            });
					});
					$('.check').click(function(){
						var ID = $(this).attr('data-check');
						
						$.ajax({
							type: "post",
							dataType: "json",
							url: '<?php echo admin_url('admin-ajax.php'); ?>',
							data: {
								action: "update_id_orderby_id", 
								id_order: ID
							},
							context: this,
							success: function(response) {
								var result = response.data;
								console.log(response.data);
							},
							error: function(err) {
								console.log(err, 'err');
                                    //Làm gì đó khi có lỗi xảy ra

                                    // console.log('The following error occured: ' + textStatus, errorThrown);
                                }
                            });
					});
					// function get_Product(){
						
					// }
					function fetchdata(){
						
						$.ajax({
							type: "post",
							dataType: "json",
							url: '<?php echo admin_url('admin-ajax.php'); ?>',
							data: {
                                    action: "get_count_order", //Tên action
                                },
                                context: this,
                                success: function(response) {
                                	var result = response.data;
                                	$('#num_count').html(result[0].COUNT);
                                },
                                error: function(jqXHR, textStatus, errorThrown) {
                                    //Làm gì đó khi có lỗi xảy ra
                                    // console.log('The following error occured: ' + textStatus, errorThrown);
                                }
                            });
					};
					setInterval(fetchdata,5000);
				});

			</script>
			<div class="modal_show fade">
				<div class="dialog_modal">
					<div class="modal_header">
						<h3>Quần Jean</h3>
					</div>
					<div class="box_now">
						<div class="modal_body modal_ne">
							<div class="box_body">
								<div class="item_box" id=""><span class="name_so">Họ tên:</span><span id="add_hoten"></span></div>
								<div class="item_box" id=""><span class="name_so">Số điện thoại:</span><span id="add_phone"></span></div>
								<div class="item_box" id=""><span class="name_so">Email:</span><span id="add_email"></span></div>
								<div class="item_box" id=""><span class="name_so">Địa chỉ:</span><span id="add_local"></span></div>
								<div class="item_box" id=""><span class="name_so">Thông tin:</span><span id="add_des"></span></div>
							</div>
						</div>
						<div class="modal_footer modal_ne">
							<div class="item_box nois"><span  class="name_so">Số lượng:</span><span id="add_soluong"></span></div>
							<div class="item_box nois"><span class="name_so">Tổng tiền:</span><span id="add_tongtien"></span>VND</div>
							<div class="item_box list_pro">
								<div class="cotrol_item">
									<div class="item"><span>Size</span> M</div>
									<div class="item" ><span>Color</span> Đỏ</div>
								</div>
								<div class="cotrol_item">
									<div class="item"><span>Size</span> M</div>
									<div class="item" ><span>Color</span> Đỏ</div>
								</div>
								<div class="cotrol_item">
									<div class="item"><span>Size</span> M</div>
									<div class="item" ><span>Color</span> Đỏ</div>
								</div>
								<div class="cotrol_item">
									<div class="item"><span>Size</span> M</div>
									<div class="item" ><span>Color</span> Đỏ</div>
								</div>
								<div class="cotrol_item">
									<div class="item"><span>Size</span> M</div>
									<div class="item" ><span>Color</span> Đỏ</div>
								</div>
								<div class="cotrol_item">
									<div class="item"><span>Size</span> M</div>
									<div class="item" ><span>Color</span> Đỏ</div>
								</div>
							</div>
						</div>
					</div>
					<div class="footer">
						<span class="btn" id="action_btn">Close</span>
					</div>
				</div>
			</div>
		</section>
	</div>
<?php }
// include 'modal.php';
// ==============FUNCTION AJAX ==============
add_action('wp_ajax_update_id_orderby_id', 'update_id_orderby_id_init');
add_action('wp_ajax_nopriv_update_id_orderby_id', 'update_id_orderby_id_init');
function update_id_orderby_id_init(){
	try {
		$id_order = (isset($_POST['id_order'])) ? esc_attr($_POST['id_order']) : '';
		global $wpdb;

		$sql = "UPDATE wp_order SET active='1' WHERE id=$id_order";
		$results = $wpdb->get_results($sql);

		wp_send_json_success($results);
	}catch(\PDOException $e) {
		wp_send_json_success($e->getMessage());
	}
	die();
}


add_action('wp_ajax_get_product_admin', 'get_product_admin_init');
add_action('wp_ajax_nopriv_get_product_admin', 'get_product_admin_init');
function get_product_admin_init(){
	$id_product = (isset($_POST['id_product'])) ? esc_attr($_POST['id_product']) : '';

	$results[] = '';
	global $wpdb;

	$query_wp_order = "SELECT * FROM wp_order WHERE id=$id_product";
	$query_wp_order_info = "SELECT * FROM wp_order_info WHERE id_order=$id_product";

	
	$result_wp_order = $wpdb->get_results($query_wp_order);
	$result_wp_order_info = $wpdb->get_results($query_wp_order_info);

	$results['result_wp_order'] = $result_wp_order[0];
	$results['result_wp_order_info'] = $result_wp_order_info;
	wp_send_json_success($results);
	// wp_send_json_success($result_wp_order_info);
	die();
}

add_action('wp_ajax_get_count_order', 'get_count_order_init');
add_action('wp_ajax_nopriv_get_count_order', 'get_count_order_init');
function get_count_order_init(){
	global $wpdb;

	$query_wp_order = "SELECT COUNT(*) AS COUNT FROM wp_order WHERE active=0";
	$result_wp_order = $wpdb->get_results($query_wp_order);
	wp_send_json_success($result_wp_order);
	die();
}
?>
