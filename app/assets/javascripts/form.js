var UserStuff = {
  init: function () {
    $('#new-user-link').on('click', RegisterFormDropDown);
    $('#login-link').on('click', SignInFormDropDown);
	  $('#create-job-link').on('click', NewJobFormDropDown);
// 	$('.request-btn a').on('click', RequestContact);
  }
}

var RegisterFormDropDown = function () {
	if ($('#login-form').css('display') == 'block')
	{
		$('#login-form').slideToggle();
	}
  $('#new-user-form').slideToggle();

};

var SignInFormDropDown = function () {
	if ($('#new-user-form').css('display') == 'block')
	{
		$('#new-user-form').slideToggle();
	}
  $('#login-form').slideToggle();
};

// var RequestContact = function () {
// 	console.log($(this).closest('.job-box').attr('id'))
//
//
// };

var NewJobFormDropDown = function () {
  $('#new-job-form').slideToggle();
};

// var sessionDestroy = function(){
//   session[:session_user] = nil}

$(document).ready(function(){
	UserStuff.init();
	Job.init();
	$('.long-desc').hide();

	$(function() {
		$( "#datepicker" ).datepicker();
	});

})

