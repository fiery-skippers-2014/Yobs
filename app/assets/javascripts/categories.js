var Job = {
	init: function() {
		$('.more-btn').on('click', this.expandDescription);
	},

	expandDescription: function() {
<<<<<<< HEAD

		console.log("success");
		$($(this).parents('.job-box').children('.job-desc').children('.long-desc')).toggle();
		return false; // prevent default click action from happening!
     	e.preventDefault(); // same thing as above
=======
		console.log("success");
		$($(this).parents('.job-box').children('.job-desc').children('.long-desc')).toggle();
>>>>>>> 570bdfff03cae4d4b9214d03d2ca4f154bf673b4
	}

}

$(document).ready(function() {
	Job.init();
	$('.long-desc').hide();
})