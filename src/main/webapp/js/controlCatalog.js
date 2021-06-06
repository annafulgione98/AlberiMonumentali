$(document).ready(function(){
    System.out.println("entro nel js");
    $(".removeX").click (remove);

    function remove () {
        System.out.println("entro in remove");
        var row = $(this).parents().filter("tr");
        var code = $(row).attr("id");

        $.post("ServletControlAdmin", {act: "delete", id : code})
            .done(function () {
                $(row).remove();
            })
            .fail(function () {
                alert("Non e' stato possibile rimuovere il prodotto");
            })
    }
}