var Job = {
    init: function() {
		$('.more-btn').on('click', this.expandDescription);
		$('.job-box').on('click', '.apply-btn', this.saveInterest);
		$('.job-box').on('click', '.notinterest-btn', this.noInterest);
		$('.job-box').on('click', '.guest_cancel-btn', this.noInterest);

		// var footer_tag = 'Read more...';
	},

	expandDescription: function() {
		if ($(this).closest('.job-box').find('.long-desc').css('display') == 'inline')
		{
			footer_tag = 'less'
		}
		else
		{
			footer_tag = 'Read more...'
		}
			// add in logic to check if long-desc is showing. if it is, change 'Read more' to 'less'
			$($(this).closest('.job-box').find('.long-desc')).toggle();
			return false; // prevent default click action from happening!
	     	e.preventDefault(); // same thing as above
	},

	saveInterest: function(event) {

		event.preventDefault()
		job_id = event.delegateTarget.id.split('job-')[1]
		interest_data = {job_id: job_id}
		$.ajax({
			url: '/interests',
			type: 'POST',
			data: interest_data
		}).success(function(data){
			var button = $(data).find('.apply-btn')
			$(data).toggleClass('interested')
			button.html('Change Your Mind')
			button.addClass('notinterest-btn')
			button.removeClass('apply-btn')
		}).error(function (){console.log("ERROR WHAT")})
	},

	noInterest: function(event) {
		console.log("clicked cancel")
		event.preventDefault()
		job_id = event.delegateTarget.id.split('job-')[1]
		interest_data = {job_id: job_id}
		$.ajax({
			url: '/interests',
			type: 'DELETE',
			data: interest_data
		}).success(function(data){
			var button = $(data).find('.notinterest-btn')
			$(data).toggleClass('interested')
			button.html('Send Me Info')
			button.addClass('apply-btn')
			button.removeClass('notinterest-btn')
			}
		).error(function (){console.log("ERROR")})

	}

}