var Job = {
	init: function() {
		$('.more-btn').on('click', this.expandDescription);
		var footer_tag = 'Read more...';
	},

	expandDescription: function() {
		if ($(this).closest('.job-box').find('.long-desc').css('display') == 'inline')
		{
			footer_tag = 'less'
			console.log('less')
		}
		else
		{
			footer_tag = 'Read more...'
			console.log('more')
		}


		//add in logic to check if long-desc is showing. if it is, change 'Read more' to 'less'

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


