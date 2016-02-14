function resizeUpdate() {
	var windowHeight = $(window).height();
	var inspectorHeaderHeight = $('#inspector header').outerHeight();
	var inspectorHeight = windowHeight-inspectorHeaderHeight;

	$('#inspector .CodeMirror').height(inspectorHeight);
}

$(function(){
	resizeUpdate();
	hljs.initHighlightingOnLoad();
	$('#inspector-trigger').click(function(){
		$('#inspector').addClass('expanded');
		$(this).addClass('hidden');
        resizeUpdate();
        document.ace.resize();
        document.ace.renderer.updateFull();
	});
	$('#inspector-hide').click(function(){
		$(this).parents('#inspector').removeClass('expanded');
		$('#inspector-trigger').removeClass('hidden');
	});
});

$(window).resize(function() {
    resizeUpdate();
});
