// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

var $donationTotalElement = $('#donation-total');
var $donationProgressBar = $('#donation-progress-bar');
var donation_status_url = $donationTotalElement.data('status-url');

var update_donation_progress = function() {
  $.get(donation_status_url, function(data) {
    $donationTotalElement.html(data.current_donation_amount);
    $donationProgressBar.css('width', data.percentage);
  });
};

$(function() {
  setInterval(update_donation_progress, 10000);
});
