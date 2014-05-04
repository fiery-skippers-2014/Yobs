var UserStuff = {
  init: function () {
    $('#new-user-link').on('click', RegisterFormDropDown);
    $('#login-link').on('click', SignInFormDropDown);
	$('#create-job-link').on('click', NewJobFormDropDown);
	$('.request-btn a').on('click', RequestContact);
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

var RequestContact = function () {
	console.log($(this).closest('.job-box').attr('id'))
// 	if ($('#new-user-form').css('display') == 'block')
// 	{
// 		$('#new-user-form').slideToggle();
// 	}
//   $('#login-form').slideToggle();
};

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


// <<div class="header">

//    TEST THIS
//   <% if !current_user %>
//     <a href="#" id="login-link">Login</a>
//     <a href="#" id="new-user-link">Register</a>
//   <%else%>
//     <%= current_user.user_name %>
//     <%= link_to "Log Out", session_path, method: :delete %>
//   <% end %>


//   <div class="login-form">
//     <%= form_tag '/sessions' %>
//       <p> <%= email_field_tag :email, nil, :placeholder => "Email" %> </p>
//       <p> <%= password_field_tag :password, nil, :placeholder => "Password" %> </p>
//       <p> <%= submit_tag "Log in", id: 'login-submit-btn' %> </p>
//   </div>

// </div>

