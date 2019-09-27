<?php
/**
 * Template Name: Category Ban Dat
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
						'post_type'=> 'post_land',
						'order'    => 'DESC',
						 'showposts' => 25, 
					);              
					$the_query = new WP_Query( $args );
					if($the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); 
						$post_id = $post->ID;
						$dien_tich = get_post_meta( get_the_ID(), '_dien_tich', TRUE );
						$quan = get_post_meta( get_the_ID(), '_quan', TRUE );
						$gia_tien = get_post_meta( get_the_ID(), '_gia_tien', TRUE );
						$loai_tin = get_post_meta( get_the_ID(), '_loai_tin', TRUE );
						switch ($loai_tin) {
							case 'Thường':
							$color = 'color01';
							break;
							case 'Ưu tiên':
							$color = 'color02';
							break;
							case 'Vip':
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
											<div class="left space_left">Giá</div>: <?php echo $gia_tien ?>
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