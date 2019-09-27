<?php
/**
 * Template Name: Category Dự Án
 * @package WordPress
 * @subpackage nnDuy
 * @since News_nnDuy
 */

get_header(); ?>
<section class="main_content">
	<div class="container">
		<div class="content_sum cate_post">
			<div class="content_left left">
				<h3 class="index_title"><?php single_cat_title(); ?></h3>
				<div class="box_conent_news box_mall">
					<?php 
					$args = array(
						'post_type'=> 'post_project',
						'order'    => 'DESC',
						'showposts' => 25, 
					);              
					$the_query = new WP_Query( $args );
					if($the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); 
							$post_id = $post->ID;
						$ten_du_an = get_post_meta( get_the_ID(), '_ten_du_an', TRUE );
						$dia_chi = get_post_meta( get_the_ID(), '_dia_chi', TRUE );
						$tong_dien_tich = get_post_meta( get_the_ID(), '_tong_dien_tich', TRUE );
						$gia_tu = get_post_meta( get_the_ID(), '_gia_ban', TRUE );
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
											<div class="left space_left">Tổng diên tích</div>: <?php echo $tong_dien_tich ?>m<sup>2</sup>
										</div>
										<div class="inline">
											<div class="left space_left">Giá bán từ</div>: <?php echo $gia_tu ?>
										</div>
									</div>
								</div>
							</div>
							<!-- item_list -->
						<?php endwhile; else: ?>
						<p>Không có tin nào !</p>
					<?php endif; wp_reset_postdata(); ?>
				</div>
			</div>
			<div class="content_right left">
				<?php get_sidebar(); ?>
			</div>
		</div>
	</div>
</section>
<?php get_footer();?>