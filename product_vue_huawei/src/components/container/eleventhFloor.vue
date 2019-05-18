<template>
    <div id="eleventhFloor">
         <!-- 一楼 -->
        <div class="first">
            <h2>精选配件</h2>
            <ul>
                <li><a href="">保护壳</a></li>
                <li><a href="">保护套</a></li>
                <li><a href="">贴膜</a></li>
                <li><a href="">移动电源</a></li>
                <li><a href="">耳机</a></li>
                <li><a href="">充电器/线材</a></li>
                <li><a href="">自拍杆/支架</a></li>
                <li><a href="">音响</a></li>
                <li><a href="">U盘/存储卡</a></li>
                <li><a href="">摄像机/镜头</a></li>
                <li><a href="">智能硬件</a></li>
                <li><a href="">表带</a></li>
            </ul>
            <div>查看更多></div>
        </div>
        <!-- 二楼 -->
        <div class="second">
            <ul>
                <li><a href=""><img src="../../../public/container/eleventhFloor/11.jpg"></a></li>
                <li>
                    <a href="">
                        <div class="gridImg"><img src="../../../public/container/eleventhFloor/12.png"></div>
                    </a>
                    <div class="gridInfo">荣耀FlyPods青春版 真无线耳机</div>
                    <p class="gridDescribe">赠599元红酒券等礼包 </p>
                    <p class="gridPrice">￥369</p>
                </li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
            </ul>
        </div>
        <!-- 三楼 -->
        <div class="third">
            <ul>
                <li>
                    <a href="">
                        <div class="thirdImg">
                            <p class="thirdImgP">
                            <img src="../../../public/container/eleventhFloor/31.png">
                            </p>
                            <p class="gridDescribe">
                                支持Qi无线充电标准  
                            </p>
                        </div>
                        <div class="gridTitle">
                            华为无线充电器
                        </div>
                        <p class="gridPrice">
                            ￥99
                        </p>
                    </a>
                </li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
            </ul>
        </div>
        <img class="four" src="../../../public/container/eleventhFloor/41.jpg">
    </div>
</template>
<script>
export default {
    
}
</script>
<style>
*{margin: 0;padding: 0;}
#eleventhFloor{                                                               /*整个十一楼楼的样式*/
    width: 1200px;
    margin: 5rem auto 0;
}
#eleventhFloor>.first{
    margin-top: 1.5rem;
}
#eleventhFloor>.second{
    margin-top: 5rem;
}

#eleventhFloor::after{                                                       /*清除.first容器的浮动*/
    content: "";
    display: block;
    clear: both;
}
#eleventhFloor::before{                                                       /*给.first容器里面的最上面加一个空table*/
    content: "";
    display: table;
}
#eleventhFloor>.first>h2,                                                    /*整个.first容器所有元素左浮动*/
#eleventhFloor>.first>ul{
    float: left;
}
#eleventhFloor>.first>h2{                                                    /*.first容器里面h2字体的粗细*/
    font-weight: 500;
    line-height: 40px;
}

#eleventhFloor>.first>ul>li>a{                                               /*.first容器里面a字体颜色*/
    color:#9F9F9F;
}
#eleventhFloor>.first>ul>li{                                                 /*更改.first容器里li的左外边距*/
    margin-left: 1.5rem;
}
#eleventhFloor>.first>ul>li>a:hover{                                         /*li a hover的颜色*/
    color:#CB242B;
}
#eleventhFloor>.first>div{                                                   /*.first容器里面div靠右浮动*/
    float: right;
    line-height: 40px;
}

#eleventhFloor>.second>ul{                                                   /*由于第一个容器浮动不占位,让第二个容器距离上边距有距离*/
    margin-top: 3rem;
}
#eleventhFloor>.second>ul>li{                                                /*第二个容器里面每个li的大小位置背景颜色*/
    width: 230px;height: 290px;
    background-color: #F9F9F9;
    margin-left: 10px;
    border-radius: 10px;
}
#eleventhFloor>.second>ul>li:nth-child(5),                                   /*第二个容器第二排li距离上面和下面的距离*/
#eleventhFloor>.second>ul>li:nth-child(6),
#eleventhFloor>.second>ul>li:nth-child(7),
#eleventhFloor>.second>ul>li:nth-child(8),
#eleventhFloor>.second>ul>li:nth-child(9){
    margin-top:10px;
}
#eleventhFloor>.second>ul>li:nth-child(1),
#eleventhFloor>.second>ul>li:nth-child(5){
    margin-left: 0px;
}
#eleventhFloor>.second>ul>li>a>.gridImg>img{                                 /*每个li里面img的大小*/
    width: 150px;height: 150px;
    margin-top: 30px;
}
#eleventhFloor>.second>ul>li img{                                            /*第二个容器里面第一个大img的大小及样式*/
    border-radius: 10px;
    width: 470px;height:290px;
}
#eleventhFloor>.second>ul>li:first-child{                                    /*第二个容器的一个大的img图片容器的大小位置*/
    width: 458px;
    margin-right: 12px;
}
#eleventhFloor>.second>ul>li:hover{                                          /*第二个容器的一个大的img图片鼠标停留属性*/
    box-shadow: -5px 10px 50px 5px #EDEDED;                 
    transition: 0.5s;
}
#eleventhFloor>.second>ul>li>.gridInfo{                                      /*第二个容器里面.gridInfo的字体*/

}
#eleventhFloor>.second>ul>li>.gridDescribe{                                  /*第二个容器里面.gridDescribe的字体*/
    font-size: 12px;
    color: #777777;
    line-height: 15px;
}
#eleventhFloor>.second>ul>li>.gridPrice{                                     /*第二个容器里面.gridPrice的字体*/
    font-size: 13px;
    color: #D00230;
    line-height: 50px;
}

#eleventhFloor>.third>ul>li:first-child{                                     /*第三个容器里面,第一个li左边外边距为0*/
    margin-left: 0px;
}
#eleventhFloor>.third>ul>li{                                                 /*第三个容器里面,每个li的width和height样式*/
    width: 190px;height: 190px;
    background-color: #F9F9F9;
    margin-left: 10px;
    border-radius: 10px;
}
#eleventhFloor>.third>ul>li>a>.thirdImg>.thirdImgP>img{                      /*第三个容器里,img图片的大小*/
    width: 120px;height: 120px;
    margin-top: 35px;
}
#eleventhFloor>.third>ul>li>a>.thirdImg>p:nth-child(2){                      /*第三个容器里,.gridDescribe框的样式 字体的样式*/
    display: block;
    /* border: 1px solid; */
    background-color: #F3F3F3;
    border-radius: 0 0 10px 10px;
    font-size: 12px;
    color: #777777;
}
#eleventhFloor>.third>ul>li>a>.gridTitle{                                    /*第三个容器里,.gridTitle字体的样式*/
    line-height: 30px;
    color: #3A3A3A;
    font-size: 14px;
    font-weight: 500;
}
#eleventhFloor>.third>ul>li>a>.gridPrice{
    line-height: 10px;
    color: #D00230;
}

#eleventhFloor>.four{                                                         /*第四个容器里的图片*/
    margin-top: 4rem;
    border-radius: 10px;
}
</style>


