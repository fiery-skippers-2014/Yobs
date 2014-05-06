$(document).ready(function(){
  AgencyResponse.init();
})

var AgencyResponse = {
  init: function() {
    // $('#container').on('click', '.send-response', this.updateResponse)
    $('.send-response').on("ajax:success", this.updateResponse)
    $('.send-response').on("ajax:error", this.appendError)
  },

  updateResponse: function(event) {
    console.log(event.currentTarget.className)
  },

  appendError: function() {
    console.log('in error method')
  }


}