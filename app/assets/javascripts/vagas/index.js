$(document).on("turbolinks:load", function() {
    if ($("#vagasIndex").length > 0) {
        if($("#espera-div").length > 0) {
            $("#espera-title").on("click", function () {
                $("#espera-div").slideToggle("fast");
                $("#espera-icon").toggleClass('flip');
            });

            $("#aprovadas-title").on("click", function () {
                $("#aprovadas-div").slideToggle("fast");
                $("#aprovadas-icon").toggleClass('flip');
            });

            $("#reprovadas-title").on("click", function () {
                $("#reprovadas-div").slideToggle("fast");
                $("#reprovadas-icon").toggleClass('flip');
            });
        }
    }
});