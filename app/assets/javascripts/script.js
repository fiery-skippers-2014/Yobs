var RegisterFormDropDown = function () {
  $('.new-user').slideToggle()};

var SignInFormDropDown = function () {
  $('.login-user').slideToggle()};

var NewJobFormDropDown = function () {
  $('#new-job-form').slideToggle()};


$(document).ready(function (){

	$(function() {
    	$( "#datepicker" ).datepicker();
	});


  $('#new-user-link').on('click', RegisterFormDropDown);
  $('#login-link').on('click', SignInFormDropDown);
  $('#create-job-link').on('click', NewJobFormDropDown);



});




// var sessionDestroy = function(){
//   session[:session_user] = nil}



