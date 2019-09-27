<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage nnDuy
 * @since News_nnDuy
 */

get_header(); ?>
<section class="main_content">
	<div class="container">
		<div class="content_sum">
			<div class="content_left left">
				<div class="sum_content">
					<div class="heading_title">
						<h2><span>Đất cần bán</span></h2>
					</div>
					<div class="box_conent_news box_mall">
						<?php 
						$args = array(
							'post_type'	=> 'post_land',
							'showposts' => 10, 
							'meta_key' => '_loai_tin',
							'orderby' => array( 
								'meta_value' => 'ASC',
								'date'      => 'DESC', 
							),
						);              
						$the_query = new WP_Query( $args );
						if($the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); 
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
								<div class="title_content_top repo_show">
									<a href="<?php echo get_permalink( $post->ID ); ?>">
										<h3 class="<?php echo $color;?>"><?php the_title(); ?></h3></a>
									</div>
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
										<div class="title_content_top repo_hide">
											<a href="<?php echo get_permalink( $post->ID ); ?>">
												<h3 class="<?php echo $color;?>"><?php the_title(); ?></h3></a>
											</div>
											<div class="info_content_bottom">
												<div>
													<div class="left space_left">Giá</div>: 
													<?php 
													if(empty($gia_tien)){
														echo 'thương lượng';
													}else{
														echo $gia_tien ;
													}
													?>
												</div>
												<div>
													<div class="left space_left">Diện tích</div>: <?php echo $dien_tich;?>m<sup>2</sup>
												</div>
												<div>
													<div class="left space_left">Quận</div>: <?php echo $quan ?>
												</div>
											</div>
										</div>
									</div>
									<!-- item_list -->
								<?php endwhile;?>
								<div class="read_more_index">
									<a href="<?php bloginfo('url'); ?>/post_land">Xem nhiều hơn...</a>		
								</div>
								<?php else: ?>
									<p>Không có tin nào !</p>
								<?php endif; wp_reset_postdata(); ?>
							</div>
							<div class="q_c_box">
							<!-- <a target="_blank" href="https://kyguinhadat43.com/post_sell_project/nhan-dat-cho-du-an-khu-do-thi-homeland-central-park/">
								<img src="<?php echo get_template_directory_uri() ?>/lib/images/qc/banner00.gif" alt="dsadfsdfs">
							</a> -->
							<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
							<!-- index_kygui_01 -->
							<ins class="adsbygoogle"
							style="display:block"
							data-ad-client="ca-pub-2471616157718830"
							data-ad-slot="3755668877"
							data-ad-format="auto"
							data-full-width-responsive="true"></ins>
							<script>
								(adsbygoogle = window.adsbygoogle || []).push({});
							</script>
						</div>
						<div class="heading_title">
							<h2><span>Nhà cần bán</span></h2>
						</div>
						<div class="box_conent_news box_mall">
							<?php 
							$args = array(
								'post_type'=> 'post_home',
								'showposts' => 10,
								'meta_key' => '_loai_tin',
								'orderby' => array( 
									'meta_value' => 'ASC',
									'date'      => 'DESC', 
								),
							);              
							$the_query = new WP_Query( $args );
							if($the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); 
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
								$post_id = $post->ID;
								?>
								<div class="item_list">
									<div class="title_content_top repo_show">
										<a href="<?php echo get_permalink( $post->ID ); ?>">
											<h3 class="<?php echo $color;?>"><?php the_title(); ?></h3></a>
										</div>
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
											<div class="title_content_top repo_hide">
												<a href="<?php echo get_permalink( $post->ID ); ?>">
													<h3 class="<?php echo $color;?>"><?php the_title(); ?></h3></a>
												</div>
												<div class="info_content_bottom">
													<div>
														<div class="left space_left">Giá</div>:
														<?php 
														if(empty($gia_tien)){
															echo 'thương lượng';
														}else{
															echo $gia_tien ;
														}
														?>
													</div>
													<div>
														<div class="left space_left">Diện tích</div>: <?php echo $dien_tich;?>m<sup>2</sup>
													</div>
													<div>
														<div class="left space_left">Quận</div>: <?php echo $quan ?>
													</div>
												</div>
											</div>
										</div>
										<!-- item_list -->
									<?php endwhile;?>
									<div class="read_more_index">
										<a href="<?php bloginfo('url'); ?>/post_home">Xem nhiều hơn...</a>		
									</div>
									<?php else: ?>
										<p>Không có tin nào !</p>
									<?php endif; wp_reset_postdata(); ?>
								</div>
								
								<div class="heading_title">
									<h2><span>Nhà cho thuê</span></h2>
								</div>
								<div class="box_conent_news box_project">
									<?php 
									$args = array(
										'post_type'=> 'rend_home',
										'showposts' => 10,
										'meta_key' => '_loai_tin',
										'orderby' => array( 
											'meta_value' => 'ASC',
											'date'      => 'DESC', 
										),
									);              
									$the_query = new WP_Query( $args );
									if($the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); 

										$gia_tien = get_post_meta( get_the_ID(), '_gia_tien', TRUE );
										$dia_chi = get_post_meta( get_the_ID(), '_dia_chi', TRUE );
										$tong_dien_tich = get_post_meta( get_the_ID(), '_tong_dien_tich', TRUE );
										$gia_tu = get_post_meta( get_the_ID(), '_gia_ban', TRUE );
										$phong_ngu = get_post_meta( get_the_ID(), '_phong_ngu', TRUE );
										$phong_tam = get_post_meta( get_the_ID(), '_phong_tam', TRUE );
										$tang = get_post_meta( get_the_ID(), '_tang', TRUE );
										$quan = get_post_meta( get_the_ID(), '_quan', TRUE );
										$tinh_thanhpho = get_post_meta( get_the_ID(), '_tinh_thanhpho', TRUE );
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
										$post_id = $post->ID;
										?>
										<div class="item_list">
											<div class="title_content_top repo_show">
												<a href="<?php echo get_permalink( $post->ID ); ?>">
													<h3 class="<?php echo $color;?>"><?php the_title(); ?></h3></a>
												</div>
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
													<div class="title_content_top repo_hide">
														<a href="<?php echo get_permalink( $post->ID ); ?>">
															<h3 class="<?php echo $color;?>"><?php the_title(); ?></h3></a>
														</div>
														<div class="info_content_bottom">
															<div class="inline">
																<div class="left space_left">Giá</div>: <?php echo $gia_tien ?> triệu/tháng
															</div>
															<div class="inline">
																<div class="left space_left">Tầng</div>: <?php echo $tang;?> tầng
															</div>
															<div class="inline">
																<div class="left space_left">Phòng ngủ</div>: <?php echo $phong_ngu;?> phòng
															</div>
															<div class="inline">
																<div class="left space_left">Phòng tắm</div>: <?php echo $phong_tam;?> phòng
															</div>
															<div class="inline">
																<div class="left space_left">Địa chỉ</div>: <?php echo $quan ?> - <?php echo $tinh_thanhpho ?>
															</div>
														</div>
													</div>
												</div>
												<!-- item_list -->
											<?php endwhile; ?>
											<div class="read_more_index">
												<a href="<?php bloginfo('url'); ?>/rend_home">Xem nhiều hơn...</a>		
											</div>
											<?php else: ?>
												<p>Không có tin nào !</p>
											<?php endif; wp_reset_postdata(); ?>
										</div>
										<div class="heading_title">
											<h2><span>Dự án bất động sản</span></h2>
										</div>
										<div class="box_conent_news box_project">
											<?php 
											$args = array(
												'post_type'=> 'post_project',
												'showposts' => 8,
												'order'    => 'DESC'
											);              
											$the_query = new WP_Query( $args );
											if($the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); 

												$ten_du_an = get_post_meta( get_the_ID(), '_ten_du_an', TRUE );
												$dia_chi = get_post_meta( get_the_ID(), '_dia_chi', TRUE );
												$tong_dien_tich = get_post_meta( get_the_ID(), '_tong_dien_tich', TRUE );
												$gia_tu = get_post_meta( get_the_ID(), '_gia_ban', TRUE );

												$post_id = $post->ID;
												?>
												<div class="item_list">
													<div class="title_content_top repo_show">
														<a href="<?php echo get_permalink( $post->ID ); ?>">
															<h3 class="color02"><?php the_title(); ?></h3></a>
														</div>
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
															<div class="title_content_top repo_hide">
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
																		<div class="left space_left">Giá bán từ</div>:
																		<?php 
																		if(empty($gia_tu)){
																			echo '<em>đang cập nhật</em>';
																		}else{
																			echo $gia_tu ;
																		}
																		?>
																	</div>
																</div>
															</div>
														</div>
														<!-- item_list -->
													<?php endwhile; else: ?>
													<p>Không có tin nào !</p>
												<?php endif; wp_reset_postdata(); ?>
											</div>
											<div class="q_c_box">
												<a href="">
													<img src="<?php echo get_template_directory_uri() ?>/lib/images/qc/2.jpg" alt="dsadfsdfs">
												</a>
											</div>
											<div class="heading_title">
												<h2><span>Tin tức bất động sản</span></h2>
											</div>
											<div class="box_conent_news">
												<div class="box_sum_news">
													<?php 
													$args = array(
														'post_type'=> 'post',
														'posts_per_page'   => 4,
														'category_name' => 'tin-tuc-bat-dong-san',
														'orderby'          => 'date',
														'order'            => 'DESC',
														'post_status'      => 'publish'
													);    
													$id_not_post = array();          
													$the_query = new WP_Query( $args );
													if($the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post();
									// $id_not_post = $post->ID.','.$id_not_post;
														array_push($id_not_post,$post->ID);
														;
														?>
														<div class="item_news">
															<a href="<?php echo get_permalink( $post->ID ); ?>" class="avata_news">
																<?php
																if ( has_post_thumbnail() ) {
																	echo get_the_post_thumbnail($post->ID,'square_news_thumbnail');
																}
																?>
															</a>
															<div class="des_news">
																<h4>
																	<a href="<?php echo get_permalink( $post->ID ); ?>"><?php the_title(); ?></a>
																</h4>
																<div class="group_news_summary"><?php the_excerpt(); ?></div>
															</div>
														</div>
														<!-- item_news -->
													<?php endwhile; else: ?>
													<p>Không có tin nào !</p>
												<?php endif; wp_reset_postdata(); ?>
											</div>
											<div class="more_news">
												<ul>
													<?php 
													$key =  $id_not_post;
													$args = array(
														'post_type'			=> 'post',
														'posts_per_page'   	=> 6,
														'post__not_in'		=> $key,
														'category_name' 	=> 'tin-tuc-bat-dong-san',
														'orderby'          	=> 'date',
														'order'            	=> 'DESC',
														'post_status'      	=> 'publish'
													);              
													$the_query = new WP_Query( $args );
													if($the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
														<li><a href="<?php echo get_permalink( $post->ID ); ?>"><?php the_title(); ?></a></li>
													<?php endwhile; else: ?>
													<p>Không có tin nào !</p>
												<?php endif; wp_reset_postdata(); ?>
											</ul>
										</div>
										<!-- more_news -->
									</div>
								</div>
							</div>
							<div class="content_right left">
								<?php get_sidebar(); ?>
							</div>
						</div>
					</div>
				</section>
				<?php get_footer();?>