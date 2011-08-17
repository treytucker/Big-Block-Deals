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

// Clears and stores the default value in input fields
$('input[type="text"]').each(function() {

       var default_value = this.value;

       $(this).focus(function(){
               if(this.value == default_value) {
                       this.value = '';
               }
       });

       $(this).blur(function(){
               if(this.value == '') {
                       this.value = default_value;
               }
       });

});

$('textarea').each(function() {

       var default_value = this.value;

       $(this).focus(function(){
               if(this.value == default_value) {
                       this.value = '';
               }
       });

       $(this).blur(function(){
               if(this.value == '') {
                       this.value = default_value;
               }
       });

});

//$('.business-input').cleardefault();


});