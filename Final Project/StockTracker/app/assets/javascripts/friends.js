// ajax functions for initiating friend lookup. Its called on the partial lokup form.

// created a  var called init_friend_lookup which represents the friend look up action
var init_friend_lookup;
// created a few functions for that var.
init_friend_lookup = function(){
  // code shows the spinner right before the ajax submition happens
  $('#friend-lookup-form').on('ajax:before', function(event, data, status){
    show_spinner();
  });
  // code shows the spinner right before the ajax submition happens
  $('#friend-lookup-form').on('ajax:after', function(event, data, status){
    hide_spinner();
  });
  // code that renders the data results from the params inquiry then re-initialize the listener.
  $('#friend-lookup-form').on('ajax:success', function(event, data, status){
    $('#friend-lookup').replaceWith(data);
    init_friend_lookup();
  });


  // Handles friend search errors
  // Code that returns friend not found if true, replace with??? and hides the spinner after returning an error.
  $('#friend-lookup-form').on('ajax:error', function(event, xhr, status, error){
    hide_spinner();
    $('#friend-lookup-results').replaceWith(' ');
    $('#friend-lookup-errors').replaceWith('Friend was not found.');
  });
}
// Standard javascript start up code with the init_friend_lookup var called.
$(document).ready(function() {
  init_friend_lookup();
})
