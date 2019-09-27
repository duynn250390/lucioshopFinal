	<?php
/**
 * Template header
 * @package WordPress
 * @subpackage nnDuy
 * @since nnDuy 1.0
 */
?>
<!DOCTYPE html>
<html <?php language_attributes(); ?> dir="ltr">
<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# website: http://ogp.me/ns/website#">
	<meta http-equiv="content-language" content="vi" />
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<meta name="google-site-verification" content="m1YZxxQ5cVck1vxQeMbHu3Q8aMMxsOrtqAbcszj8YjE" />
	<?php 
	if(is_home()){ ?>
		<meta property="og:image" content="https://kyguinhadat43.com/wp-content/themes/kyguibds/lib/images/slideshow/respontive_background.jpg" />
	<?php }
	?>
	<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
	<script>
		(adsbygoogle = window.adsbygoogle || []).push({
			google_ad_client: "ca-pub-2471616157718830",
			enable_page_level_ads: true
		});
	</script>
	<link rel="alternate" href="<?php bloginfo('url'); ?>" hreflang="vn-vi" />
	<?php if ( is_singular() && pings_open( get_queried_object() ) ) : ?>
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
<?php endif; ?>
<?php wp_head(); ?>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-118675130-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag(){dataLayer.push(arguments);}
	gtag('js', new Date());

	gtag('config', 'UA-118675130-1');
</script>
<!-- ClickDesk Live Chat Service for websites -->
<script type='text/javascript'>
	var _glc =_glc || []; _glc.push('all_ag9zfmNsaWNrZGVza2NoYXRyEgsSBXVzZXJzGICA4NKipJkJDA');
	var glcpath = (('https:' == document.location.protocol) ? 'https://my.clickdesk.com/clickdesk-ui/browser/' : 
		'http://my.clickdesk.com/clickdesk-ui/browser/');
	var glcp = (('https:' == document.location.protocol) ? 'https://' : 'http://');
	var glcspt = document.createElement('script'); glcspt.type = 'text/javascript'; 
	glcspt.async = true; glcspt.src = glcpath + 'livechat-new.js';
	var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(glcspt, s);
</script>
<script src="https://sp.zalo.me/plugins/sdk.js"></script>
<!-- End of ClickDesk -->
</head>
<body id="top" <?php body_class(); ?>>
	<div class="banner_son">
		<a href="<?php echo get_bloginfo( 'url' ); ?>" target="_blank"  class="left_img_posi img_posi">
			<img src="<?php echo get_template_directory_uri() ?>/lib/images/qc/banner2.gif" alt="">
		</a>
		<a href="<?php echo get_bloginfo( 'url' ); ?>/ky-gui-nha-dat-nhan-ky-gui-mua-ban-nha-dat-tai-da-nang/" target="_blank" class="right_img_posi img_posi"><img src="<?php echo get_template_directory_uri() ?>/lib/images/qc/banner2.gif" alt=""></a>
	</div>
	<div class="box_menu_sp sp">
		<a href="<?php bloginfo('url'); ?>" class="logo_sp" ><img src="<?php echo get_template_directory_uri() ?>/lib/images/icon/logo.png" class="logo" alt="<?php echo get_bloginfo( 'name' ); ?>"></a>
		<?php wp_nav_menu('global-nav'); ?>
	</div>
	<div  class="ovelay_box"></div>
	<div class="warap">
		<header class="main_header">
			<div class="container">
				<div class="heaer_left left">
					<h1>
						<a href="<?php bloginfo('url'); ?>" class="pc" ><img src="<?php echo get_template_directory_uri() ?>/lib/images/icon/logo.png" class="logo" alt="<?php echo get_bloginfo( 'name' ); ?>"></a>
						<a href="<?php bloginfo('url'); ?>" class="sp" ><img src="<?php echo get_template_directory_uri() ?>/lib/images/icon/logo_rp.png" class="logo" alt="<?php echo get_bloginfo( 'name' ); ?>"></a>
					</h1>
				</div>
				<div class="header_right left">
					<a href=""><img src="<?php echo get_template_directory_uri() ?>/lib/images/icon/banner01.png" class="banner01" alt="Dịch vụ ký gửi bất động sản chuyên nghiệp Đà Nẵng"></a>
				</div>
				<div class="control_regis right">
					<div class="show_menu regi">
						<i class="fa fa-bars" aria-hidden="true"></i>
					</div>
					<div class="regi"><i class="fa fa-plus-circle" aria-hidden="true"></i><a href="<?php bloginfo('url'); ?>/dang-ky-thanh-vien">Đăng ký thành viên</a></div>
					<div class="regi pull_news"><a href="<?php bloginfo('url'); ?>/ky-gui-nha-dat-nhan-ky-gui-mua-ban-nha-dat-tai-da-nang/" class="">KÝ GỬI NHÀ - ĐẤT</a></div>
				</div>
			</div>
		</header>
		<menu class="main_menu">
			<div class="container">
				<?php wp_nav_menu('global-nav'); ?>
			</div>
		</menu>
		<?php
		if ( is_home() ) {?>
			<section class="main_slide_respon">
				<img src="<?php echo get_template_directory_uri() ?>/lib/images/slideshow/respontive_background.jpg" alt="Dịch vụ ký gửi nhà đất Đà Nẵng">
			</section>
			<section class="main_slide">
				<div class="container">
					<div class="your_class">
						<div class="item_slide">
							<a href="https://kyguinhadat43.com/post_project/khu-dan-cu-nam-cau-cam-le-mo-rong/" target="_blank">
								<img src="<?php echo get_template_directory_uri() ?>/lib/images/slideshow/t1.jpg" alt="bán nhà trung tâm thành phố đà nẵng">
							</a>
						</div>
						<div class="item_slide">
							<a href="<?php echo get_bloginfo( 'url' ); ?>/ky-gui-nha-dat-nhan-ky-gui-mua-ban-nha-dat-tai-da-nang/">
								<img src="<?php echo get_template_directory_uri() ?>/lib/images/slideshow/3_1.jpg" alt="ký gửi nhà Đà Nẵng">
							</a>
						</div>
						<div class="item_slide">
							<a href="<?php echo get_bloginfo( 'url' ); ?>/ky-gui-nha-dat-nhan-ky-gui-mua-ban-nha-dat-tai-da-nang/">
								<img src="<?php echo get_template_directory_uri() ?>/lib/images/slideshow/2_1.jpg" alt="ký gửi đất Đà Nẵng">
							</a>
						</div>
					</div>
				</div>
			</section>
			<section class="mobile_search">
				<?php search_mobile();?>
			</section>
		<?php }
		?>