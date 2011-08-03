$(document).ready(function(){

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