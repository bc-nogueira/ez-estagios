$(document).on("turbolinks:load", function() {
    $(document).on("click", "#espera-title", function() {
        $("#espera-div").slideToggle("fast");
        $("#espera-icon").toggleClass('flip');
    });

    $(document).on("click", "#aprovadas-title", function() {
        $("#aprovadas-div").slideToggle("fast");
        $("#aprovadas-icon").toggleClass('flip');
    });

    $(document).on("click", "#reprovadas-title", function() {
        $("#reprovadas-div").slideToggle("fast");
        $("#reprovadas-icon").toggleClass('flip');
    });
});