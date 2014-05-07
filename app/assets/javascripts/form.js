var UserStuff = {
  init: function () {
    $('#new-user-link').on('click', RegisterFormDropDown);
    $('#login-link').on('click', SignInFormDropDown);
	$('#create-job-link').on('click', NewJobFormDropDown);
    $('.guest_interest-btn ').on('click', RegisterFormDropDown);
// 	$('.request-btn a').on('click', RequestContact);
  }
}

var RegisterFormDropDown = function () {
	if ($('#login-form').css('display') == 'block')	{
		$('#login-form').slideToggle();
	}
  	$('#new-user-form').slideToggle();
};

var SignInFormDropDown = function () {
	if ($('#new-user-form').css('display') == 'block'){
		$('#new-user-form').slideToggle();
	}
  	$('#login-form').slideToggle();
};

var NewJobFormDropDown = function () {
  $('#new-job-form').slideToggle();
};

// var sessionDestroy = function(){
//   session[:session_user] = nil}

$(document).ready(function(){
	UserStuff.init();
	$('.long-desc').hide();
	$(function() {
		$( "#datepicker" ).datepicker();
	});



})

