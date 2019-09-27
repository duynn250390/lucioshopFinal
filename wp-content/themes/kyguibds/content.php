<meta property="og:image:alt" content="<?php the_title(); ?>" />
<article class="main_content content_single">
	<div class="header_content">
		<h1 class="title"><?php the_title(); ?></h1>
	</div>
	<div class="box_info">
		<p class="dateandcat">
			<?php $categories = get_the_category();
			$category_id = $categories[0]->cat_ID;?>
			<span>04-05-2018 - 11:00 AM </span>| 
			<span class="cat"><a href="<?php echo get_category_link($category_id);?>"><?php echo get_cat_name($category_id);?></a></span>
		</p>
	</div>
	<div class="main_content_article">
		<?php the_content(); ?>
	</div>
	<div class="tags_more">
		<?php  
		$tags = wp_get_post_tags($post->ID);
		$count=0;
		if ($tags) {
			foreach($tags as $tag) {
				$count++;?>
				<a href="<?php echo get_tag_link( $tag->term_id ) ?>"><i class='fa fa-tags' aria-hidden='true'></i><?php  echo $tag->name;?></a>
				<?php if( $count >8 ) break;
			}
		}?>
	</div><!-- tags_more -->
	<div class="box_social">
		<h1>Chia sẽ bài viết này:</h1>
		<ul class="list_social">
			<li class="facebook"><a href="https://www.facebook.com/sharer/sharer.php?u=<?php echo get_permalink();?> " target="_blank" rel="nofollow" onclick="window.open( this.href,'FBwindow','height=450, width=650, menubar=no,toolbar=no,resizable=yes,scrollbars=yes'); return false;"><i class="fa fa-facebook" aria-hidden="true"></i> Chia sẽ Facebook</a></li>
			<li class="google_plus"><a href="https://plus.google.com/share?url=<?php echo get_permalink();?>" target="_blank" rel="nofollow" onclick="window.open( this.href, 'GPwindow', 'height=450, width=650, menubar=no,toolbar=no,resizable=yes,scrollbars=yes');return false;" ><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
			<li class="twitter"><a href="http://www.twitter.com/share?url=<?php echo get_permalink();?>" target="_blank" rel="nofollow"" onclick="window.open(this.href, 'TWwindow', 'height=300, width=650, menubar=no,toolbar=no,resizable=yes,scrollbars=yes');return false;"><i class="fa fa-twitter"></i></a></li>
			<li class="pinterest"><a href="https://pinterest.com/pin/create/button/?url=<?php echo get_permalink();?>" target="_blank" rel="nofollow"" onclick="window.open(this.href, 'TWwindow', 'height=300, width=650, menubar=no,toolbar=no,resizable=yes,scrollbars=yes');return false;"><i class="fa fa-pinterest"></i></a></li>
			<li class="zalo">
						<a class="zalo-share-button" data-href="<?php echo get_permalink();?>" data-oaid="4156645882814719249" data-layout="3" data-color="blue" data-customize=false>
							<img alt="Share ad" src="https://static.chotot.com.vn/storage/C2C_CDN_PRODUCTION/d9227dfc7dda59fb965c20bbd6ef1e07.svg" height="40" width="40">
						</a>
					</li>
		</ul>
	</div><!-- box_social -->
</article><!-- content_single -->
<section>
	<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
	<!-- content_ky_gui_01 -->
	<ins class="adsbygoogle"
	style="display:block"
	data-ad-client="ca-pub-2471616157718830"
	data-ad-slot="8569011859"
	data-ad-format="auto"
	data-full-width-responsive="true"></ins>
	<script>
		(adsbygoogle = window.adsbygoogle || []).push({});
	</script>
</section>
<div class="news_more">
	<h2 class="heading_more"><span>Tin tức liên quan</span></h2>
	<?php
	$category_detail =  get_the_category($post->ID); 
	$ID_Post = get_the_ID();
	$args_my_query = array(
		'cat' => $category_detail[0]->cat_ID,
		'post_type'    =>    'post',
		'post_status' => 'publish',
		'posts_per_page'=>'5',
		'order' => 'DESC',
		'orderby' => 'date',    
		'post__not_in' 		=> array($ID_Post)
	);
	$more_news = new WP_Query( $args_my_query );
	while ($more_news->have_posts()) : $more_news->the_post();?>
	<h3><a href="<?php echo get_permalink(); ?>"><?php $title = get_the_title();echo $title;?></a></h3>
<?php endwhile; wp_reset_postdata(); ?>
</div>