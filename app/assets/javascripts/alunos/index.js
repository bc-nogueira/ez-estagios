$(document).on("turbolinks:load", function() {
    if($("#alunos-espera-div").length > 0) {
        $("#alunos-espera-title").on("click", function () {
            $("#alunos-espera-div").slideToggle("fast");
            $("#alunos-espera-icon").toggleClass('flip');
        });

        $("#alunos-aprovados-title").on("click", function () {
            $("#alunos-aprovados-div").slideToggle("fast");
            $("#alunos-aprovados-icon").toggleClass('flip');
        });

        $("#alunos-reprovados-title").on("click", function () {
            $("#alunos-reprovados-div").slideToggle("fast");
            $("#alunos-reprovados-icon").toggleClass('flip');
        });
    }
});