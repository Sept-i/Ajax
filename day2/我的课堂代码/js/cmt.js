// 1获取评论列表数据
function getCommentList() {
    $.ajax({
        type: "GET",
        url: 'http://www.liulongbin.top:3006/api/cmtlist',
        success: function (res) {
            if (res.status !== 200) return alert('获取评论列表失败！')

            // 2 渲染评论列表
            // 第二种方法
            var html = "";
            res.data.forEach(function (item, index) {
                html += ` <li class="list-group-item">
                <span class="badge" style="background-color:#f5ad4c ;">评论时间:${item.time}</span>
                <span class="badge" style="background-color:#52b8e0 ;">评论人:${item.username}</span>${item.content} </li>`
            })
            $("ul").html(html);
        }

    })
}

getCommentList();

// 改造form表单,提交功能
$(function () {
    $('#formAddCmt').submit(function (e) {
        // 阻止表单按钮默认提交行为
        e.preventDefault()
        // 快速获取表单里填写的数据
        var data = $(this).serialize();
        $.ajax({
            type: 'post',
            url: 'http://www.liulongbin.top:3006/api/addcmt',

            data : data,
            success: function (res) {
                if (res.status !== 201) {
                    return alert('发表评论失败！')
                }
                getCommentList()
                // form表单jQuery对象转成原生js对象
                $('#formAddCmt')[0].reset() //重置表单的内容
            }
        })
    })
})