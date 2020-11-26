$(function () {
    var id = location.search.split('=')[1];
    // console.log(id);
    $.ajax({
        type: "get",
        url: "http://localhost/api/goods/getinfo",

        data: {
            id
        },

        success: function (res) {
            console.log(res);
            var html = template("goodsinfo-tpl", res);
            $(".abc").html(html)

        }
    })
})
