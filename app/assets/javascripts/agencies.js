$(document).ready(function(){
  AgencyResponse.init();
})

var AgencyResponse = {
  init: function() {
    var self = this;
    $('.send-response').on("ajax:success", function(response) {
        event.preventDefault();
        self.updateResponse();
      })
    $('.send-response').on("ajax:error", self.appendError)
  },

  updateResponse: function(event, data) {
    // event.preventDefault();
    console.log("made it here")
    console.log(event.currentTarget.className)
  },

  appendError: function() {
    console.log('in error method')
  }


}