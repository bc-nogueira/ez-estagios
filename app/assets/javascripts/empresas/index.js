$(document).on("turbolinks:load", function() {
    if($("#empresas-espera-div").length > 0) {
        $("#empresas-espera-title").on("click", function () {
            $("#empresas-espera-div").slideToggle("fast");
            $("#empresas-espera-icon").toggleClass('flip');
        });

        $("#empresas-aprovadas-title").on("click", function () {
            $("#empresas-aprovadas-div").slideToggle("fast");
            $("#empresas-aprovadas-icon").toggleClass('flip');
        });

        $("#empresas-reprovadas-title").on("click", function () {
            $("#empresas-reprovadas-div").slideToggle("fast");
            $("#empresas-reprovadas-icon").toggleClass('flip');
        });
    }
});