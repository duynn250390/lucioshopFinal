<script src="https://sp.zalo.me/plugins/sdk.js" type="text/javascript" charset="utf-8" async="" defer=""></script>
<article class="main_content content_single_project">
	<div class="header_content">
		<h1 class="title"><?php the_title(); ?></h1>
		<div class="info_bds ">
			<span class="info">
				<span class="gia">Giá từ:</span>
				<span class="val_gia">
					<?php 
					$gia_tien =  get_post_meta( get_the_ID(), '_gia_ban', TRUE ); 
					if(empty($gia_tien)){
						echo 'đang cập nhật';
					}else{
						echo $gia_tien ;
					}
					?>
				</span>
				<span class="info">
					<span class="gia">Tổng diện tích:</span>
					<span class="val_gia"><?php echo get_post_meta( get_the_ID(), '_tong_dien_tich', TRUE ); ?> m<sup>2</sup></span>
				</span>
				<span class="info">
					<span class="gia">Khu vực:</span>
					<span class="val_gia"><?php echo get_post_meta( get_the_ID(), '_quan', TRUE ); ?></span>
				</span>
			</div>
		</div>
		<div class="main_info_post">
			<div class="left box00 box01 ">
				<div class="box_draw">
					<div class="header">Thông tin bất động sản</div>
					<div class="box_colum">
						<div class="row_box">
							<div class="lef">Loại tin rao</div>
							<div class="right">
								<?php 
								$category = get_the_category();
								echo $category[0]->cat_name;
								?>
							</div>
						</div>
						<div class="row_box">
							<div class="lef">Loại hình phát triển</div>
							<div class="right"><?php echo get_post_meta( get_the_ID(), '_loai_hinh_phat_trien', TRUE ); ?></div>
						</div>
						<div class="row_box">
							<div class="lef">Địa chỉ</div>
							<div class="right"><?php echo get_post_meta( get_the_ID(), '_dia_chi', TRUE ); ?></div>
						</div>
					</div>
				</div>
			</div>
			<div class="left box00 box02">
				<div class="box_draw">
					<div class="header">Thông tin liên hệ</div>
					<div class="box_colum">
						<div class="row_box">
							<div class="lef">Tên liên lạc</div>
							<div class="right"><?php echo get_post_meta( get_the_ID(), '_ho_ten', TRUE ); ?></div>
						</div>
						<div class="row_box">
							<div class="lef">Mobile</div>
							<div class="right"><?php echo get_post_meta( get_the_ID(), '_mobile', TRUE ); ?></div>
						</div>
						<div class="row_box">
							<div class="lef">Email</div>
							<div class="right"><?php echo get_post_meta( get_the_ID(), '_email', TRUE ); ?></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="box_images_avatas">
			<h2 class="title_heading">Hình ảnh dự án</h2>
			<div class="your_class">
				<?php 
				$images = get_post_meta($post->ID, 'tdc_gallery_id', true);
				foreach ($images as $image) {
					// $url_img =  wp_get_attachment_url($image, 'images_project');
					$url_img =  wp_get_attachment_url($image, 'large');
					$image_img = wp_get_attachment_image($image, 'large');
					?>
					<div class="item_slide">
						<a href="#"><?php echo $image_img; ?></a>
					</div>
					<?php } ?>
				</div>
			</div>
		</div>
		<div class="box_tabs_top">
			<ul>
				<li class="active"  data_tabs="tong_quan">Tổng quan</li>
				<li data_tabs="vi_tri">Vị trí</li>
				<li data_tabs="ha_tang">Hạ tầng</li>
				<li data_tabs="dat_ban">Danh sách đất bán</li>
			</ul>
		</div>
		<div class="box_tabs">
			<div class="main_content_article active" id="tong_quan">
				<?php the_content(); ?>
			</div>
			<div class="main_content_article " id="vi_tri">
				<?php 
				$vi_tri_du_an =  get_post_meta( get_the_ID(), '_vi_tri_du_an', TRUE ); 
				if(!empty($vi_tri_du_an)){
					echo $vi_tri_du_an;
				}else{
					echo 'Đang cập nhật';
				}
				?>
			</div>
			<div class="main_content_article" id="ha_tang">
				<?php 
				$ha_tang_du_an =  get_post_meta( get_the_ID(), '_ha_tang_du_an', TRUE ); 
				if(!empty($ha_tang_du_an)){
					echo $ha_tang_du_an;
				}else{
					echo 'Đang cập nhật';
				}
				?>
			</div>
			<div class="main_content_article" id="dat_ban">
				<?php
				$terms = get_the_terms( $post->ID, 'duan_taxonomy' );
				if ( !empty( $terms ) ){
					$term = array_shift( $terms );
					list_posts_by_taxonomy( 'post_sell_project',10, $term );
				}
				?>
				<div class="box_contact">
					<div class="box_su">
						<h3>LIÊN HỆ MUA - ĐẶT CHỖ DỰ ÁN</h3>
						<p><span>Email</span>: cskh@kyguinhadat43.com</p>
						<p><span>Điện thoại</span>: 0869906070</p>
						<p><span>Zalo</span>: 0869906070</p>
					</div>
				</div>
			</div>
		</div>
		<div class="thumb_land">
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
		<div class="news_more">
			<h2 class="heading_more"><span>Dự án liên quan:</span></h2>
			<div class="box_conent_news box_project">
				<?php
				$category_detail =  get_the_category($post->ID); 
				$ID_Post = get_the_ID();
				$quan =  get_post_meta( get_the_ID(), '_quan', TRUE );
				$args_my_query = array(
					'cat' => $category_detail[0]->cat_ID,
					'post_type'    =>    'post_project',
					'post_status' => 'publish',
					'posts_per_page'=>'5',
					'order' => 'DESC',
					'orderby' => 'date',    
					'post__not_in' 		=> array($ID_Post)
				);
				$more_news = new WP_Query( $args_my_query );
				while ($more_news->have_posts()) : $more_news->the_post();
					$ten_du_an = get_post_meta( get_the_ID(), '_ten_du_an', TRUE );
					$dia_chi = get_post_meta( get_the_ID(), '_dia_chi', TRUE );
					$tong_dien_tich = get_post_meta( get_the_ID(), '_tong_dien_tich', TRUE );
					$gia_tu = get_post_meta( get_the_ID(), '_gia_ban', TRUE );

					$post_id = $post->ID;
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
									<h3 class="color02"><?php the_title(); ?></h3></a>
								</div>
								<div class="info_content_bottom">
									<div>
										<div class="left space_left">Tên dự án</div>: <?php echo $ten_du_an ?>
									</div>
									<div>
										<div class="left space_left">Địa chỉ</div>: <?php echo $dia_chi;?>
									</div>
									<div>
										<div class="left space_left">Tổng diên tích</div>: <?php echo $tong_dien_tich ?>m<sup>2</sup>
									</div>
									<div>
										<div class="left space_left">Giá bán từ</div>: <?php echo $gia_tu ?>
									</div>
								</div>
							</div>
						</div>
						<!-- item_list -->
					<?php endwhile; wp_reset_postdata(); ?>
				</div>
			</div>