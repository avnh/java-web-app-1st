$(".save").hide();
$(".cacel").hide();
$(document).ready(function () {
    $(".edit").click(function (e) {
        e.preventDefault();
        $p = $(this).parent();
        var txt = $p.find(".text").html();
        $p.find(".text").replaceWith("<input class='text' name='" + $p.prop('className') + "'' value='" + txt + "' />");
        $p.find(".edit").hide();
        $p.find(".save").show();
        $p.find(".cacel").show();
    });
});

$(document).ready(function () {
    $(".save").click(function (e) {
        $p = $(this).parent();
        var txt = $p.find(".text").val();
        var data = {
            uid: $("#uid").val(),
            col: $p.prop('className'),
            val: $p.find(".text").val()
        }
        // alert(JSON.stringify(data));
        $.ajax({
            type: "POST",
            url: "editprofile",
            data: data,
            dataType: "text",
            success: function (response) {
                $("#update-result").html(response);
            }
        });


        e.preventDefault();
        $p.find(".text").replaceWith("<span class='text'>" + txt + "</span>");
        $p.find(".edit").show();
        $p.find(".save").hide();
        $p.find(".cacel").hide();

    });
});

$(document).ready(function () {
    $(".cacel").click(function (e) {
        $p = $(this).parent()
        e.preventDefault();
        var txt = $p.find(".text").val();
        $p.find(".text").replaceWith("<span class='text'>" + txt + "</span>");
        $p.find(".edit").show();
        $p.find(".save").hide();
        $p.find(".cacel").hide();

    });
});