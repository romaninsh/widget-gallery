function resizeUpdate(){var e=$(window).height(),i=$("#inspector header").outerHeight(),r=e-i;$("#inspector .CodeMirror").height(r),$("main iframe").height(e)}$(function(){resizeUpdate(),$("#inspector-trigger").click(function(){$("#inspector").addClass("expanded"),$(this).addClass("hidden"),resizeUpdate(),document.cm.refresh()}),$("#inspector-hide").click(function(){$(this).parents("#inspector").removeClass("expanded"),$("#inspector-trigger").removeClass("hidden")})}),$(window).resize(function(){resizeUpdate()});