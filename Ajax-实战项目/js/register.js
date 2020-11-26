$(function () {
    $("form").on("submit", function (e) {
        e.preventDefault();
       
        var username = $(".lowin-input").val();
        var email = $("#email").val();
        var password = $("#pwd").val();

        $.ajax({
            type: "post",
            url: "http://localhost/api/member/register",
            data: {
                username,
                email,
                password,

            },
            success: function (res) {
                console.log(res);
            }
        })
    })
})