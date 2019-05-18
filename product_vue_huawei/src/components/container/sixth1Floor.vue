<template>
    <div id="sixthFloor">
        <div class="first">
            <h2>精品平板</h2>
            <ul>
                <li><a href="">平板电脑</a></li>
                <li><a href="">笔记本电脑</a></li>
                <li><a href="">笔记本配件</a></li>
            </ul>
            <div>
                <a href="">查看更多></a>
            </div>
        </div>
        <div class="second">
            <ul>
                <li>
                    <a href="">
                            <img src="../../../public/container/sixth1Floor/11.jpg">
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="gridInfo">
                            <img src="../../../public/container/sixth1Floor/12.png">
                        </div>
                        <div class="gridTitle">华为畅享9</div>
                        <p class="gridDescribe">32G领劵减100</p>
                        <p class="gridPrice">￥999</p>
                    </a>
                </li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
            </ul>
        </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style>
*{margin:0;padding:0;}
#sixthFloor{                                                               /*整个六楼在index网页内的布局*/
    width: 1200px;
    margin: 2rem auto 0;
}
#sixthFloor>.first>h2,                                                     /*第一个div里面的h2,ul,div设置成行内块*/
#sixthFloor>.first>ul,  
#sixthFloor>.first>div{
    display: inline-block;
}

#sixthFloor>.first{                                                        /*上面div列表的大小样式*/
    /* width: 1200px;
    margin: 0 auto; */
}
#sixthFloor>.second{                                                        /*下面div列表的大小样式*/
    /* width: 1200px;
    margin: 0 auto; */
}

#sixthFloor>.first>h2{
    float: left;                                                            /*h2元素内的字体样式*/
    font-size: 26px;
    font-weight: 500;
    margin-top: 5px;
}
#sixthFloor>.first>ul{

}
#sixthFloor>.first>ul li a{                                                 /*上面div中间ul里面a的字体的样式*/
    color:#A699A6;
    font-size: 14px;
}
#sixthFloor>.first>ul li a:hover{                                           /*a变迁hover的样式*/
    color:#CB2469;
}
#sixthFloor>.first>div{                                                     /*最右边div靠右浮动*/
    float: right;
    margin-top: 10px;
}
#sixthFloor>.first>div a{                                                   /*最右边div里面a标签字体的样式*/
    color:#000;
}
#sixthFloor>.first>div a:hover{                                             /*最右边div的里面a标签的hover样式*/
    color:#CB2469;
}

#sixthFloor>.second>ul>li>a>.gridInfo img{                                  /*下面div的ul li里面除了第一个img外所有img的大小*/
    width: 150px;height: 150px;
}
#sixthFloor>.second>ul>li:first-child img{
    border-radius: 10px;
}
#sixthFloor>.second>ul>li{                                                  /*div.second的容器下的li的大小背景颜色*/
    width: 230px;height: 290px;
    /* border: 1px solid; */
    background-color: #F9F9F9;
    margin-left: 10px;
    border-radius: 10px;
}
#sixthFloor>.second>ul li:nth-child(6),                                     /*每个li上下的间距*/
#sixthFloor>.second>ul li:nth-child(7),
#sixthFloor>.second>ul li:nth-child(8),
#sixthFloor>.second>ul li:nth-child(9),
#sixthFloor>.second>ul li:nth-child(10),
#sixthFloor>.second>ul li:nth-child(11),
#sixthFloor>.second>ul li:nth-child(12),
#sixthFloor>.second>ul li:nth-child(13),
#sixthFloor>.second>ul li:nth-child(14),
#sixthFloor>.second>ul li:nth-child(15){
    margin-top: 10px;
}
#sixthFloor>.second>ul li:nth-child(1),                                     /*div.second最左侧limargin-left清零*/
#sixthFloor>.second>ul li:nth-child(6),
#sixthFloor>.second>ul li:nth-child(11){
    margin-left: 0px;
}
#sixthFloor>.second>ul>li:not(:first-child)>a>div:first-child{              /*div.second里面li里面a里面第一个div居上边的边距*/
    margin-top: 23px;
}
#sixthFloor>.second>ul>li>a>.gridTitle{                                     /*div.second下面li a里面商品标题的样式*/

}
#sixthFloor>.second>ul>li>a>.gridDescribe{                                  /*div.second下面li a里面商品描述的样式*/
    font-size: 12px;
    color: #777777;
    line-height: 15px;
}
#sixthFloor>.second>ul>li>a>.gridPrice{                                     /*div.second下面li a里面商品价格的样式*/
    font-size: 14px;
    color: #D0021B;
    line-height: 40px;
}
#sixthFloor>.second>ul>li:hover{                                            /*div.second下面li鼠标停留hover的样式*/
    box-shadow: -5px 10px 50px 5px #EDEDED;                 
    transition: 0.5s;
}
</style>


