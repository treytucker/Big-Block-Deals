$(document).ready(function(){

// $('#login-dropdown').removeClass('.hidden');
// $('#login-dropdown').hide();


// All the quotes stuff
$('#quote-closer').click(function (){
	$('#quote-container').slideToggle("slow");
})
$('#quote-container').show();
$('#all-quotes').mbScrollable({
	width:914,
	elementsInPage:1,
	controls:"#controls",
	autoscroll:false,
})


//hacking the DC Login Box
$('#dcloginpopup').find('div').first().find('img').hide();
$('#dcloginpopup').prepend('<a class="login-closer" onclick="HideDCLogin();" >×</a>');
$('#dcloginpopup').find('table').find('tr').find('td:first').addClass('login-label');
$('#dcloginpopup').find('#submitimg').parent().prepend('<a class="login-submit" onclick="dosubmit();" href="#">Let\'s Go!</a>');


//Hacking User Widget
$('#My-Info').find('input[type="button"]').addClass('DCUser-submit');
$('#My-Info').find('tr').find('td:first').addClass('edit-field-label');
$('#forgotpasswordtr').find('.login-label').removeClass('login-label').find('a').addClass('login-submit');
$('#forgotpasswordtr').prepend('<td class="login-label"></td>');


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
$('textarea[class="clear-input"]').each(function() {
       var default_value = this.value;
       $(this).focus(function(){
               if(this.value == default_value) {
                       this.value = '';
               }
       })
       $(this).blur(function(){
               if(this.value == '') {
                       this.value = default_value;
               }
       })

})

});