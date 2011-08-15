//Preloading Fuctions


//Regular functions
$(document).ready(function(){


$('#login-dropdown').hide();

$('#all-quotes').mbScrollable({
	width:914,
	elementsInPage:1,
	controls:"#controls",
	autoscroll:false,
});

$('#login-link').click(function(){
	$('#login-dropdown').slideToggle("fast");
	return false
})

$('.login-closer').click(function(){
	$('#login-dropdown').slideToggle("fast");
	return false;
})

$('#quote-closer').click(function (){
	$('.quote-container').slideToggle("slow");
})

});