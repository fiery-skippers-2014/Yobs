var Job = {
    init: function() {
		$('.more-btn').on('click', this.expandDescription);
		$('.job-box').on('click', '.apply-btn', this.saveInterest);
		$('.job-box').on('click', '.notinterest-btn', this.noInterest);
		$('.job-box').on('click', '.guest_cancel-btn', this.deleteInterest);
		// var footer_tag = 'Read more...';
	},

	expandDescription: function() {
		var long_job_description = $(this).closest('.job-box').find('.long-desc');
		if (long_job_description.is(":visible")){
			$(this).html('Read more...')
		} else {
			$(this).html('Read less...')}
    $(long_job_description).fadeToggle();
			return false;
	    e.preventDefault();
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
		console.log("this's class is" )
		//console.log(this.class())
		event.preventDefault()
		job_id = event.delegateTarget.id.split('job-')[1]
		// job_id = event.delegateTarget.id.split('job-')[1]
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

	},

		deleteInterest: function(event) {
		event.preventDefault()
		job_id = event.delegateTarget.id.split('job-')[1]
		interest_data = {job_id: job_id}
		$.ajax({
			url: '/interests',
			type: 'DELETE',
			data: interest_data
		}).success(function(data){
			$(data).remove()
			}
		).error(function (){console.log("ERROR")})

	}


}