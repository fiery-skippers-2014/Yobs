var Job = {
    init: function() {
		$('.more-btn').on('click', this.expandDescription);
		$('.job-box').on('click', '.interest-btn', this.saveInterest);
		$('.job-box').on('click', '.notinterest-btn', this.noInterest);
		// var footer_tag = 'Read more...';
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
			// add in logic to check if long-desc is showing. if it is, change 'Read more' to 'less'
			$($(this).closest('.job-box').find('.long-desc')).toggle();
			return false; // prevent default click action from happening!
	     	e.preventDefault(); // same thing as above
	},

	saveInterest: function(event) {
		event.preventDefault()
		job_id = event.target.classList[1].substring(4)
		interest_data = {job_id: job_id}
		$.ajax({
			url: '/interests',
			type: 'POST',
			data: interest_data
		}).success(function(data){
			console.log(data)
				$(data).css('background-color','#DDD')
				$(data).find('.interest-btn').hide()
				$(data).find('.notinterest-btn').removeClass('hidden')
				$(data).find('.notinterest-btn').show()
		}
		).error(function (){console.log("ERROR")})
	},

	noInterest: function(event) {
		event.preventDefault()
		job_id = event.target.classList[1].substring(4)
		interest_data = {job_id: job_id}
		$.ajax({
			url: '/interests',
			type: 'DELETE',
			data: interest_data
		}).success(function(data){
				console.log(data)
				$(data).css('background-color','#FFF')
				$(data).find('.interest-btn').removeClass('hidden')
				$(data).find('.interest-btn').show()
				$(data).find('.notinterest-btn').hide()
			}
		).error(function (){console.log("ERROR")})

	}

}