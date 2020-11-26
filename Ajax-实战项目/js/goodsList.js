$(function () {
   
    $.ajax({
        type: "get",
        url: "http://localhost/api/goods/getlist",
        success: function (res) {
            console.log(res);
            var html = template("listTpl", res)
            $("#goodsList").html(html);
            
        }

    })
})