<script src="https://sp.zalo.me/plugins/sdk.js" type="text/javascript" charset="utf-8" async="" defer=""></script>
	<article class="main_content content_single_land">
		<div class="header_content">
			<h1 class="title"><?php the_title(); ?></h1>
			<div class="info_bds ">
				<span class="info">
					<span class="gia">Giá:</span>
					<span class="val_gia">
						<?php $gia_tien =  get_post_meta( get_the_ID(), '_gia_tien', TRUE ); 
						if(empty($gia_tien)){
							echo 'thương lượng';
						}else{
							echo $gia_tien ;
						}
						?>
						 triệu/tháng
					</span>
				</span>
				<span class="info">
					<span class="gia">Diện tích:</span>
					<span class="val_gia"><?php echo get_post_meta( get_the_ID(), '_dien_tich', TRUE ); ?>m<sup>2</sup></span>
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
					<div class="header">Thông tin chi tiết</div>
					<div class="box_colum">
						<div class="row_box">
							<div class="lef">Địa chỉ</div>
							<div class="right">
								<?php 
								$tinh =  get_post_meta( get_the_ID(), '_tinh_thanhpho', TRUE );
								$phuong =  get_post_meta( get_the_ID(), '_quan', TRUE );
								$xa =  get_post_meta( get_the_ID(), '_phuong_xa', TRUE );
								$dc =  get_post_meta( get_the_ID(), '_info_dia_chi', TRUE );
								if(isset($tinh)&& isset($phuong) && isset($xa)){
									if(isset($dc)){
										echo $dc .' - '. $xa .' - '. $phuong .' - '. $tinh;
									}else{
										echo $xa .' - '. $phuong .' - '. $tinh;
									}
								}	
								?>
							</div>
						</div>
						<div class="row_box">
							<div class="box_half">
								<div class="lef">Hướng</div>
								<div class="right">
									<?php echo get_post_meta( get_the_ID(), '_huong_nha', TRUE ); ?>
								</div>
							</div>
							<div class="box_half">
								<div class="lef">Đường trước nhà</div>
								<div class="right">
									<?php echo get_post_meta( get_the_ID(), '_duong_truoc_nha', TRUE ); ?> m
								</div>
							</div>
						</div>
						<div class="row_box">
							<div class="box_half">
								<div class="lef">Số tầng</div>
								<div class="right">
									<?php echo get_post_meta( get_the_ID(), '_tang', TRUE ); ?> tầng
								</div>
							</div>
							<div class="box_half">
								<div class="lef">Phòng khách</div>
								<div class="right">
									<?php echo get_post_meta( get_the_ID(), '_phong_khach', TRUE ); ?> phòng
								</div>
							</div>
						</div>
						<div class="row_box">
							<div class="box_half">
								<div class="lef">Phòng ngủ</div>
								<div class="right">
									<?php echo get_post_meta( get_the_ID(), '_phong_ngu', TRUE ); ?> phòng
								</div>
							</div>
							<div class="box_half">
								<div class="lef">Phòng tắm</div>
								<div class="right">
									<?php echo get_post_meta( get_the_ID(), '_phong_tam', TRUE ); ?> phòng
								</div>
							</div>
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
		<div class="info_bds info_bo">
			<span class="info">
				<span class="gia">Loại tin đăng:</span>
				<span class="val_gia">
					<?php 
					$loai_tin =  get_post_meta( get_the_ID(), '_loai_tin', TRUE ); 
					if(empty($loai_tin)){
						echo 'Đang cập nhật';
					}else{
						if($loai_tin == 1){
							echo 'VIP';
						}else if ($loai_tin == 2) {
							echo 'Ưu tiên';
						}else{
							echo 'Thường';
						}
					}
					?>
				</span>
			</span>
			<span class="info">
				<span class="gia">Ngày đăng:</span>
				<span class="val_gia">
					<?php 
					$post_date = get_the_date( 'd-m-Y' ); echo $post_date;
					?>
				</span>
			</span>
		</div>
		<div class="main_content_article">
			<div class="inf_main">Thông tin mô tả: </div>
			<?php the_content(); ?>
		</div>

		<div class="thumb_land">
			<h2 class="title_heading">Xem ảnh</h2>
			<div class="your_class">
				<?php 
				$images = get_post_meta($post->ID, 'tdc_gallery_id', true);
				foreach ($images as $image) {
					$url_img =  wp_get_attachment_url($image, 'large');
					$image_img = wp_get_attachment_image($image, 'large');
					?>
					<div class="item_slide">
						<a href="#s"><?php echo $image_img; ?></a>
					</div>
					<?php } ?>
				</div>
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
		<div class="news_more">
			<h2 class="heading_more"><span>Nhà cho thuê tại: <?php echo get_post_meta( get_the_ID(), '_quan', TRUE ); ?></span></h2>
			<div class="box_conent_news">
				<?php
				$ID_Post = get_the_ID();
				$quan =  get_post_meta( get_the_ID(), '_quan', TRUE );
				$args_my_query = array(
					'post_type'    => 'rend_home',
					'post_status' => 'publish',
					'posts_per_page'=>'5',
					'order' => 'DESC',
					'meta_query' => array(
						array(
							'key' => '_quan',
							'value' => $quan,
						)
					),
					'orderby' => 'date',    
					'post__not_in' 		=> array($ID_Post)
				);
				$more_news = new WP_Query( $args_my_query );
				while ($more_news->have_posts()) : $more_news->the_post();
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
									echo get_the_post_thumbnail($post_id,'square_smalld_thumbnail');
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
								<div class="info_content_bottom">
									<div>
										<div class="left space_left">Giá</div>: <?php echo $gia_tien ?>
									</div>
									<div>
										<div class="left space_left">Diện tích</div>: <?php echo $dien_tich;?><sup>2</sup>
									</div>
									<div>
										<div class="left space_left">Quận</div>: <?php echo $quan ?>
									</div>
								</div>
							</div>
						</div>
						<!-- item_list -->
					<?php endwhile; wp_reset_postdata(); ?>
				</div>
			</div>