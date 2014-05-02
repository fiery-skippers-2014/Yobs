var Job = {
	init: function() {
		$('.more-button').on('ajax:success', this.expandDescription);
		$('.more-button').on('ajax:error', this.appendError);
	},

	expandDescription: function(e, data) {
		console.log("success");
		console.log(data);
	},

	appendError: function(e, data) {
		console.log(responseText);
	}
}

$(document).ready(function() {
	Job.init();
})