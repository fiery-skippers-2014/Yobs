var RegisterFormDropDown = function () {
  $('.new-user').slideDown()};

var SignInFormDropDown = function () {
  $('.login-user').slideDown()};

var NewJobFormDropDown = function () {
  $('#new-job-form').slideDown()};


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



