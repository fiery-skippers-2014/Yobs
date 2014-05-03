var UserStuff = {
  init: function () {
    $('#new-user-link').on('click', RegisterFormDropDown)
    $('#login-link').on('click', SignInFormDropDown)
  }
}

var RegisterFormDropDown = function(){
  $('.new-user-form').slideToggle()
}

var SignInFormDropDown = function(){
  $('.login-form').slideToggle()
}

// var sessionDestroy = function(){
//   session[:session_user] = nil}


$(document).ready(function(){
  UserStuff.init();
  })


