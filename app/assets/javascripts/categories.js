var Job = {
	init: function() {
		$('.more-btn').on('ajax:success', this.expandDescription);
		$('.more-btn').on('ajax:error', this.appendError);
	},

	expandDescription: function(event, data) {
		event.preventDefault();
		console.log("success");
		console.log(data);
		$($(this).parents('.job-box').children('.job-desc').children('.long-desc')).toggle();
	},

	appendError: function(event, data) {
		event.preventDefault();
		console.log(data);
	}
}

$(document).ready(function() {
	Job.init();
	$('.long-desc').hide();
})