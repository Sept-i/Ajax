$(function(){
    
    $("#btnSend").on("click",function(){
        var text = $("#ipt").val().trim();

        if(text.length<=0) return $("#ipt").val("");

        $("#talk_list").append(`<li class="right_word"><img src="img/person02.png" /> <span>${text}</span></li>`);
        
        $("#ipt").val("")

        resetui();

        // 发送内容到服务器
        getChat(text)
    })

    function getChat(text){
        $.ajax({
            type:"get",
            url:"http://www.escook.cn:3006/api/robot",
            data:{
                spoken:text
            },
            success:function(res){
                if(res.message=="success"){
                    $("#talk_list").append(`<li class="left_word"><img src="img/person01.png" /> <span>${res.data.info.text}</span></li>`);
                    resetui()

                    getVoice(res.data.info.text)
                }
            }
        })
    }

    function getVoice(text){
        $.ajax({
            type:"get",
            url:"http://www.escook.cn:3006/api/synthesize",
            data:{
                text
            },
            success:function(res){
                if(res.status==200){
                    $("#voice").attr("src",res.voiceUrl);
                }
            }
        })
    }

    $("#ipt").on("keyup",function(e){
        if(e.keyCode==13){
            $("#btnSend").click();
        }
    })
})