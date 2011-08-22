$(document).ready(function(){

$('#login-dropdown').removeClass('.hidden');
$('#login-dropdown').hide();


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

// function DCLoginListener(user)
// {
//   if(!user)
//   {
//      document.getElementById("mydeals").style.display="none";
//      document.getElementById("login-link").innerHTML = "<a href=\"javascript: return false;\" onclick=\"javascript:ShowDCLogin();\"> Log In </a>";       
//   }
//   else {
//      document.getElementById("mydeals").style.display="inline";	       
//      document.getElementById("login-link").innerHTML = "<a class=\"logged-in\" href=\"javascript: return false;\" onclick=\"javascript:DCLogout();\"> Log Out </a>";
//   }
// }

//hacking the DC Login Box
$('#dcloginpopup').find('div').first().find('img').hide();
$('#dcloginpopup').prepend('<a class="login-closer" onclick="HideDCLogin();" >×</a>');
$('#dcloginpopup').find('table').find('tr').find('td:first').addClass('login-label');
$('#dcloginpopup').find('#submitimg').parent().prepend('<a class="login-submit" onclick="dosubmit();" href="#">Let\'s Go!</a>');

// $('#login-link').find('.not-logged-in').click(function (){
// 	ShowDCLogin();
// 	return false;
// })

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
       })
       $(this).blur(function(){
               if(this.value == '') {
                       this.value = default_value;
               }
       })

})

});