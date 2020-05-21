// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

$( document ).ready(function() {
    //Checking if the input has some value...
    (function(){
        if($("#secondary_language_main_word").val().length <= 0 ) {
            $(".submit_button").attr("disabled", true);
            $(".submit_button").addClass("blocked_button");
        }
    })();

    $("#secondary_language_main_word").on("keyup", function(){
        if($(this).val().length >= 3) {
            $(".submit_button").attr("disabled", false);
            $(".submit_button").removeClass("blocked_button");
        } else {
            $(".submit_button").attr("disabled", true);
            $(".submit_button").addClass("blocked_button");
        }
    });

   $("#word_creator").bind("ajax:complete", function(event, xhr, status) {
        $("#secondary_language_main_word").val('');
        $(".submit_button").attr("disabled", true);
        $(".submit_button").addClass("blocked_button");
   });
   
   $(function(){
    // Plain jquery
    $('#fadeMe').fadeOut(5000);

    // jquery-ui
    const availableCities = ['Baltimore', 'New York'];
    $('#calendarField').datepicker( { dateFormat: 'yy-mm-dd' } );
    })

});