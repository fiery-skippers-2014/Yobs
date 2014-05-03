var UserStuff = {
  init: function () {
    $('#new-user-link').on('click', RegisterFormDropDown)
    $('#login-link').on('click', SignInFormDropDown)
    $('.header').on('submit', 'form.login-user', function() {
      this.loginUser
      })
    $('#login-user').on('ajax:success', function() {console.log("Made it")})
   $('form#login-user').on('ajax:error', function() {
    debugger
   })

  },
  loginUser: function(e, data) {
    event.preventDefault
    debugger
    $('.login-user').css('display','none')
  }
}

var RegisterFormDropDown = function(){
  $('.new-user').slideDown()
}

var SignInFormDropDown = function(){
  $('.login-user').slideDown()
}



// var sessionDestroy = function(){
//   session[:session_user] = nil}


$(document).ready(function(){
  UserStuff.init();
  })


