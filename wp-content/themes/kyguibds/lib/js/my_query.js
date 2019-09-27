
$(document).ready(function () {
	gotop();
	search();
	show_li_toc();
	qc_posi();
	box_tabs_project();
	$('.your_class').slick({
		prevArrow: '<div class="slick-prev"><i class="fa fa-angle-left" aria-hidden="true"></i></div>',
		nextArrow: '<div class="slick-next"><i class="fa fa-angle-right" aria-hidden="true"></i></div>',
		fade: true,
		autoplay: true,
		autoplaySpeed: 6000,
	});
	check_show_item_menu();
	$(window).resize(function () {
	});
});

$(window).scroll(function () {
	qc_posi();
	if ($(this).scrollTop() != 0) {
		$('.go_top').fadeIn();
	} else {
		$('.go_top').fadeOut();
	}
});

function box_tabs_project(){
	var box_tabs_top = $('.box_tabs_top ul li');
	var main_content_article = $('.main_content_article');
	box_tabs_top.on('click', function() {
		var data_tabs = $(this).attr('data_tabs');
		box_tabs_top.removeClass('active');
		main_content_article.removeClass('active');
		$('#'+data_tabs).addClass('active');
		$(this).addClass('active');
	});
}

function qc_posi(){
	var width = $(window).width();
	var num_wi = (width - 1000 )/2;
	var num_res = (num_wi-120);
	if(width > 1240){
		$('.left_img_posi').css('left',num_res+'px');
		$('.right_img_posi').css('right',num_res+'px');
	}
}
$(function() {
	var search = $('ul.top_social li.search');
	search.click(function(){
		$('.box_search').addClass('clasBlock');
		$('.search_click').css('display','block');
	});
	var close_search = $('.close-search');
	close_search.click(function(){
		$('#bey_box').removeClass('clasBlock');
		$('.search_click').css('display','none');

	});
});
function gotop() {
	$('.go_top').click(function() {
		$('html, body').animate({scrollTop: 0}, 800);
		return false;
	});
}
function search(){

	$('.btn_search_sp').click(function(){
		$('.box_item_top').toggleClass('expanded').siblings().removeClass('expanded');
	});

}
function show_li_toc(){
	$(".toc_widget_list>li:first-child>ul").addClass('show_tooc');
	$('.toc_widget_list>li').click(function() {
		$('.toc_widget_list>li>ul').removeClass('show_tooc');
		$(this).children().addClass('show_tooc');
		// $('.toc_widget_list>li>ul').css('display','none');
		// $(this).children().css('display','block');
	});	
	$('.toc_widget_list>ul>li>ul>li').click(function() {
		$('.toc_widget_list>li>ul').removeClass('show_tooc');
		$(this).children().addClass('show_tooc');
	});	
}
function check_show_item_menu() {
	$screen_device = $(window).width();
	$main_menu = $('#menu-header_primary>li');

}
$(function(){
	$('#menu-header_primary>li').each(function(index){
		if($(this).hasClass('active')){
			var offset_last = $('#menu-header_primary>li:last-child').offset();
			var offset = $(this).offset();
			// console.log(offset.left);
			var WidthUL = $('#menu-header_primary').width();
			var leftPos = $('#menu-header_primary').scrollLeft();
			$('.menu_pc').animate({scrollLeft: offset.left}, 800);
		}
	});
});
