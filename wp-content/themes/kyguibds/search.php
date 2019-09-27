<?php
get_header(); ?>
<section class="mobile_search">
			<?php search_mobile();?>
		</section>
<section class="main_content">
	<div class="container">
		<div class="content_sum cate_post">
			<div class="content_left left">
				<div class="content_primary float_left">
					<div class="box_conent_news box_mall">
						<h3 class="index_title">Kết quả tìm kiếm</h3>
						<?php
						if($_GET['tinh'] != '0'){
							$tinh =  $_GET['tinh'];
						}else{
							$tinh = null;
						}
						if($_GET['quan'] != '0'){
							$quan =  $_GET['quan'];
						}else{
							$quan = '';
						}
						if($_GET['huong'] != '0'){
							$huong =  $_GET['huong'];
						}else{
							$huong = '';
						}
						if($_GET['post_type'] != '0'){
							$post_type = $_GET['post_type'];
						}else{
							$post_type = array('post','post_land','post_home');
						}
						if(($tinh != null) && ($quan != null) && ($huong != null) && ($post_type != 'post')){
							$quanhe = 'AND';
						}else{
							$quanhe = 'OR';
						}
						$paged = ( get_query_var('paged') ) ? get_query_var('paged') : 1;
						if($post_type == 'post_project'){
							$args = array(
								's'=>$s,
								'post_type'    =>  'post_project',
								'post_status' => 'publish',
								'orderby' => 'post_date',  
								'order' => 'DESC',  
							);
						}else{
							$args = array(
								's'=>$s,
								'post_type'    =>  $post_type,
								'post_status' => 'publish',
								'orderby' => array( 
									'meta_value' => 'ASC',
									'date'      => 'DESC', 
								), 
								'order' => 'DESC',  
								'meta_query' => array(
									// 'relation' => "'". $quanhe . "'",
									// 'relation' => 'OR',
									// array(
									// 	'key' => '_tinh_thanhpho',
									// 	'value' => $tinh,
									// 	'compare' => 'LIKE',
									// ),
									array(
										'key' => '_quan',
										'value' => $quan,
										'compare' => 'LIKE',
									),
									array(
										'key' => '_huong_nha',
										'value' => $huong,
										'compare' => 'LIKE',
									),
								),
								'paged' => $paged
							);
						}
						$search_query = new wp_query($args);
						$search_keyword = _wp_specialchars($s,1);
						$search_count = $search_query->post_count;
						?>
						<?php 
						if($search_count > 0): 
							if( $search_query->have_posts() ) : while( $search_query->have_posts() ) : $search_query->the_post();
								$post_id = $post->ID;
								$dien_tich = get_post_meta( get_the_ID(), '_dien_tich', TRUE );
								$quan = get_post_meta( get_the_ID(), '_quan', TRUE );
								$gia_tien = get_post_meta( get_the_ID(), '_gia_tien', TRUE );
								$loai_tin = get_post_meta( get_the_ID(), '_loai_tin', TRUE );
								switch ($loai_tin) {
									case 3:
									$color = 'color01';
									break;
									case 2:
									$color = 'color02';
									break;
									case 1:
									$color = 'color03';
									break;
									default:
									$color = 'color04';
								}
								?>
								<div class="item_list">
									<div class="box_img">
										<a href="<?php echo get_permalink( $post->ID ); ?>">
											<?php
											if ( has_post_thumbnail() ) {
												echo get_the_post_thumbnail($post_id,'square_smallc_thumbnail');
											}
											else {?>
											<img class="img_default" src="<?php echo get_site_url();?>/wp-content/uploads/2018/04/default_image.jpg" alt="Ký gửi bất động sản Đà Nẵng">
											<?php }
											?>
										</a>
									</div>
									<div class="main_content_news_item">
										<div class="title_content_top">
											<a href="<?php echo get_permalink( $post->ID ); ?>">
												<h3 class="<?php echo $color;?>"><?php the_title(); ?></h3></a>
											</div>
											<div class="excerpt"><p><?php echo get_the_excerpt(); ?></p></div>
											<div class="info_content_bottom">
												<div class="inline">
													<div class="left space_left">Giá</div>: <?php echo $gia_tien ?> <?php if($_GET['post_type'] == 'rend_home'){ echo 'triệu/tháng';} ?>
												</div>
												<div class="inline">
													<div class="left space_left">Diện tích</div>: <?php echo $dien_tich;?>m<sup>2</sup>
												</div>
												<div class="inline">
													<div class="left space_left">Quận</div>: <?php echo $quan ?>
												</div>
											</div>
										</div>
									</div>
									<!-- item_list -->
								<?php endwhile;
							endif;
							else:?>
							<p class="no_result">
								Không có kết quả !
							</p>
						<?php endif; ?>
					</div><!-- content_primary -->
				</div>
			</div>
			<div class="content_right left">
				<?php get_sidebar(); ?>
			</div>
		</div>
	</div>
</section>
<?php get_footer();?>