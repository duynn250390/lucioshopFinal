<?php
/*
Plugin Name: Dự Án
Author: Vnroki
Description: Thêm thông tin của tin bất động sản: Hướng nhà - Đường - Quận...
*/


/*==========================================
NHÀ CẦN BÁN
==========================================*/
// Thông tin người nhập và liên hệ
// =======================================
function project_meta_box(){
	$id = 'project_meta_box';
	$title = 'Thông tin nhà cần bán';
	$callback = 'project_output';
	$screen = 'project';
	add_meta_box( $id, $title, $callback,$screen);

}
add_action('add_meta_boxes','project_meta_box');
function project_output($post){
	$du_an = get_post_meta( $post->ID, '_du_an', true );
	?>
	<style type="text/css">
	.box_info_meta_box:after{
		content: '';
		display: block;
		clear: both;
		height: 0;
		overflow: hidden;
	}
	.item_list{
		width: 50%;
		float: left;
		margin-bottom: 15px;
	}
	.item_list_box{
		padding:0 15px;
	}
	.box_info_meta_box{display: block;}
	.box_info_meta_box lable{
		display: block;
		font-weight: bold;
	}
	.box_info_meta_box input,.box_info_meta_box select{
		width: 100%;
	}
</style>
<?php global $current_user;
$lever =  $current_user->user_level;
?>
<div class="box_info_meta_box">
	<div class="item_list">
		<div class="item_list_box">
			<lable for="du_an" style="display: block;">Dự án</lable>
			<input name="du_an" class="code"  id="du_an" type="text" value="<?php echo $du_an ?>">	
		</div>	
	</div>	
</div>
<?php
}
function project_save($post_id){
	if(isset($_POST['du_an'])){
		$du_an = sanitize_text_field( $_POST['du_an'] );
		update_post_meta($post_id,'_du_an',$du_an);
	}
}
add_action('save_post','project_save');