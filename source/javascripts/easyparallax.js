function EasyPeasyParallax() {
	scrollPos = $(this).scrollTop();
	$('.page-header').css({
		'background-position' : '0%' + (-scrollPos/4)+"px"
	});
	$('.header-text').css({
		'margin-top': (scrollPos/4)+"px",
		'opacity': 1-(scrollPos/450)
	});
}
$(document).ready(function(){
	$(window).scroll(function() {
		EasyPeasyParallax();
	});
});
