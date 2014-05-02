var RegisterFormDropDown = function(){
  $('.new-user').slideDown()}

var SignInFormDropDown = function(){
  $('.login-user').slideDown()}

// var sessionDestroy = function(){
//   session[:session_user] = nil}


$(document).ready(function(){

  $('#new-user-link').on('click', RegisterFormDropDown)
  $('#login-link').on('click', signInFormDropDown)










})