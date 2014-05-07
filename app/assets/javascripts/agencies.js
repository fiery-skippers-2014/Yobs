$(document).ready(function(){
  AgencyResponse.init();
})

var AgencyResponse = {
  init: function() {
    $('.interests-table').on('click', '.response-btn', this.updateResponse);
  },

  updateResponse: function(event) {
    event.preventDefault();
    self = event.currentTarget
    interest_id = event.currentTarget.classList[1].split('-')[1]
    interest_data = {id: interest_id}
    $.ajax({
      url: '/interest',
      type: "PUT",
      data: interest_data
    })
    .success(function(data){
      if ($(self).html() === 'Yes') {
        $(self).html('Undo')}
      else {
        $(self).html('Yes')
      }
    })
    .error(function(data){ debugger
    })
  }
}
