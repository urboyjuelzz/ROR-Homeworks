// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
// require turbolinks
//= require_tree .

// creating a javascripts hide_spinner function for the spinner id in the _spinner partial.
var hide_spinner = function(){
  $('#spinner').hide();
}

// creating a javascripts show_spinner function for the spinner id in the _spinner partial.
var show_spinner = function(){
  $('#spinner').show();
}
