// ajax functions for initiating stock lookup. Its called on the partial lokup form.

// created a  var called init_stock_lookup which represents the stock look up action
var init_stock_lookup;
// created a few functions for that var.
init_stock_lookup = function(){
  // code shows the spinner right before the ajax submition happens
  $('#stock-lookup-form').on('ajax:before', function(event, data, status){
    show_spinner();
  });
  // code shows the spinner right before the ajax submition happens
  $('#stock-lookup-form').on('ajax:after', function(event, data, status){
    hide_spinner();
  });
  // code that renders the data results from the params inquiry then re-initialize the listener.
  $('#stock-lookup-form').on('ajax:success', function(event, data, status){
    $('#stock-lookup').replaceWith(data);
    init_stock_lookup();
  });


  // Handles stock search errors
  // Code that returns stock not found if true, replace with??? and hides the spinner after returning an error.
  $('#stock-lookup-form').on('ajax:error', function(event, xhr, status, error){
    hide_spinner();
    $('#stock-lookup-results').replaceWith(' ');
    $('#stock-lookup-errors').replaceWith('Stock not found.');
  });
}
// Standard javascript start up code with the init_stock_lookup var called.
$(document).ready(function() {
  init_stock_lookup();
})
