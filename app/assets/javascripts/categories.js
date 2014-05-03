var Job = {
	init: function() {
		$('.more-btn').on('click', this.expandDescription);
	},

	expandDescription: function() {
		console.log("success");
		$($(this).parents('.job-box').children('.job-desc').children('.long-desc')).toggle();
	}

}

$(document).ready(function() {
	Job.init();
	$('.long-desc').hide();
})