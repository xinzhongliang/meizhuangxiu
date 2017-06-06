// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.

//= require bootstrap
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap/alert
//= require bootstrap/dropdown
//= require bootstrap/modal
//= require bootstrap/carousel
//= require autosize.min
//= require jquery.countdown.min
//= require wow.min
//= require_tree.

$(document).on("turbolinks:load", function(){
  new WOW().init();

$(document).ready(function () {
$('#myCarousel').carousel({
  interval: 1500 //目前是1.5秒播放一张，可以根据需要调整这个值
})

$(document).ready(function(){

    $(".filter-button").click(function(){
        var value = $(this).attr('data-filter');

        if(value == "all")
        {
            //$('.filter').removeClass('hidden');
            $('.filter').show('1000');
        }
        else
        {
           $('.filter[filter-item="'+value+'"]').removeClass('hidden');
           $(".filter").not('.filter[filter-item="'+value+'"]').addClass('hidden');
            // $(".filter").not('.'+value).hide('3000');
            // $('.filter').filter('.'+value).show('3000');

        }
    });

    if ($(".filter-button").removeClass("active")) {
        $(this).removeClass("active");
        }
  $(this).addClass("active");

});
