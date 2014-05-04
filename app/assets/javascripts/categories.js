var Job = {
	init: function() {
		$('.more-btn').on('click', this.expandDescription);
	},

	expandDescription: function() {
		// $($(this).parents('.job-box').children('.job-desc').children('.long-desc')).toggle();
		$($(this).closest('.job-box').find('.long-desc')).toggle();
		return false; // prevent default click action from happening!
     	e.preventDefault(); // same thing as above
	}

}

// $(document).ready(function() {
// 	// Job.init();
// 	// $('.long-desc').hide();
// })