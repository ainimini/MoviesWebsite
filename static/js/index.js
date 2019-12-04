/*悬浮框*/
$(function(){
        $("[rel=drevil]").popover({
            trigger:'manual',
            placement : 'bottom', //placement of the popover. also can use top, bottom, left or right
            content : '<div style="text-decoration:underline; font-size:15px;"> 蜘蛛侠</div><div>简介：</div><div><a href="#"><button type="button" class="btn btn-info">立即观看</button></a><span class="glyphicon glyphicon-heart" role="button" style="color: #e4606d ;float:right;size:15px"></span></div>',
            title : '<div id="popOverBox" ><img src="images/1121.jpg" width="251" height="201" /></div>', //this is the top title bar of the popover. add some basic css
            html: 'true', //needed to show html of course
            //this is the content of the html box. add the image here or anything you want really.
            animation: false
        }).on("mouseenter", function () {
                    var _this = this;
                    $(this).popover("show");
                    $(this).siblings(".popover").on("mouseleave", function () {
                        $(_this).popover('hide');
                    });
                }).on("mouseleave", function () {
                    var _this = this;
                    setTimeout(function () {
                        if (!$(".popover:hover").length) {
                            $(_this).popover("hide")
                        }
                    }, 100);
                });
	});
