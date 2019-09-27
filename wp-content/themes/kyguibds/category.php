<?php
/**
 * Template Name: Category Default
 * @package WordPress
 * @subpackage nnDuy
 * @since News_nnDuy
 */

get_header(); ?>
<section class="main_content">
	<div class="container">
		<div class="content_sum cate_news">
			<div class="content_left left">
				<h1 class="index_title">Chuyên mục: <?php single_cat_title(); ?></h1>
				<?php
				while ( have_posts() ) : the_post(); ?>
				<article class="list_item_post content_home">
					<div class="heading_title_news">
						<h2 class="title">
							<a href="<?php echo get_permalink(); ?>">
									<?php
									$title = get_the_title();
									echo $title;
									?> 
								</a>
						</h2>
					</div>
					<?php if(has_post_thumbnail()): ?>
						<div class="item_avatar_news">
							<a href="<?php echo get_permalink(); ?>" class="thumb_img_article">
								<img src="<?php echo the_post_thumbnail_url('square_smallc_thumbnail');?>" alt="<?php echo get_the_title();?>">
							</a>	
						</div>
					<?php endif ?>
					<div class="modern_list_content">
						<!-- <div class="cate_gory">
							<?php $categories = get_the_category();
							$category_id = $categories[0]->cat_ID;?>
							<a href="<?php echo get_category_link($category_id);?>">
								<?php echo get_cat_name($category_id);?></a>
							</div> -->
							<div class="time_ago">
								Ngày đăng <span><?php echo get_the_date(); ?></span>
							</div>
							<p><?php echo get_the_excerpt();?></p>
						</div>
					</article><!-- list_item_post -->
				<?php endwhile; wp_reset_postdata(); ?>
			</div>
			<div class="content_right left">
				<?php get_sidebar(); ?>
			</div>
		</div>
	</div>
</section>
<?php get_footer();?>