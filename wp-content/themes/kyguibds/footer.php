<?php
/**
 * Template footer
 * @package WordPress
 * @subpackage nnDuy
 * @since nnDuy 1.0
 */
?>
<footer class="main_footer">
	<span class="go_top"><i class="fa fa-home" aria-hidden="true"></i></span>
	<div class="container">
		<div class="copy_right">© 2018 www.kyguinhadat43.com. All Rights Reserved <br> Phát triển bởi <a target="_blank" href="http://vnroki.com/"><strong style="color: #de0204;">VNROKI GROUP</strong></a>
		</div>
	</div>	
</footer>
<script type="text/javascript">
	var ovelay_box = $('.ovelay_box');
	var box_menu_sp  = $('.box_menu_sp ');
	var show_menu   = $('.show_menu  ');
	show_menu.on('click',function(){
		box_menu_sp.css('left','0px');
		ovelay_box.show();
	});
	ovelay_box.on('click',function(){
		box_menu_sp.css('left','-240px');
		$(this).hide();
	});
</script>
</div>
</body>