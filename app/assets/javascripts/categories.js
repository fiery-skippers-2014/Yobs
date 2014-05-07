var Job = {
    init: function() {
		$('.more-btn').on('click', this.expandDescription);
		$('.job-box').on('click', '.interest-btn', this.saveInterest);
		$('.job-box').on('click', '.notinterest-btn', this.noInterest);
		$('.job-box').on('click', '.guest_cancel-btn', this.noInterest);
	},

	expandDescription: function() {
		if ($(this).closest('.job-box').find('.long-desc').is(":visible")){
			$(this).html('Read more...')
		}
		else {
			$(this).html('Read less')
		}
		$($(this).closest('.job-box').find('.long-desc')).fadeToggle();
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
		console.log("clicked cancel")
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
				$(data).closest('.job-box').css('background-color','#98e698') // should not hide, but turn box green instead
			}
		).error(function (){console.log("ERROR")})

	}

}