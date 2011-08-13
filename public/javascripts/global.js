$(document).ready(function(){
	
$('#login-dropdown').hide();

$('#login-link').click(function(){
	$('#login-dropdown').slideToggle("fast");
	return false
})

$('.login-closer').click(function(){
	$('#login-dropdown').slideToggle("fast");
	return false;
})

$('#all-quotes').mbScrollable({
	width:914,
	elementsInPage:1,
	controls:"#controls",
	autoscroll:false,
});	

$('#quote-closer').click(function (){
	$('.quote-container').slideToggle("slow");
})

});