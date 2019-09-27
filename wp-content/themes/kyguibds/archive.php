<?php get_header(); ?>
<section class="main_content">
	<div class="container">
		<div class="content_sum">
			<div class="content_left left">
				<div class="sum_content">
					<?php echo get_post_format();?>
					<?php if(have_posts()): while ( have_posts() ) : the_post(); ?>
						<?php  get_template_part( 'content', get_post_format());?>
						<div class="navigation"><p><?php posts_nav_link(); ?></p></div>
						<?php setpostview( get_the_ID());?>
					<?php endwhile?>
				<?php else:?>
					<?php  get_template_part( 'content', 'none');?>
				<?php endif; ?>
			</div>
		</div>
		<div class="content_right left">
			<?php get_sidebar(); ?>
		</div>
	</div>
</div>
</section>
<?php get_footer();?>