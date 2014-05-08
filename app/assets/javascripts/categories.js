var Job = {
    init: function() {
		$('.more-btn').on('click', this.expandDescription);
		$('.job-box').on('click', '.apply-btn', this.saveInterest);
		$('.job-box').on('click', '.notinterest-btn', this.noInterest);
		$('.job-box').on('click', '.guest_interest-btn', this.promptLogin)
		$('.job-box').on('click', '.guest_cancel-btn', this.deleteInterest);
		// var footer_tag = 'Read more...';
	},

	expandDescription: function() {
		if ($(this).closest('.job-box').find('.long-desc').css('display') == 'inline'){
			footer_tag = 'less'
		}
		else{
			footer_tag = 'Read more...'
		}
			$($(this).closest('.job-box').find('.long-desc')).toggle();
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
			var button = $('.job-' + data)
			var job_box = $('#job-'+data)
			job_box.toggleClass('interested')
			button.html('Change Your Mind')
			button.addClass('notinterest-btn')
			button.removeClass('apply-btn')
		}).error(function (xhr){
			if (xhr.status === 403) {
				window.location = "/sign_up"
			}
			})
	},

	noInterest: function(event) {

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
		).error(function (){

		})

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
	},

}