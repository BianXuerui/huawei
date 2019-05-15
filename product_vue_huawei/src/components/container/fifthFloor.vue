<template>
    <div id="fifthFloor">
        <div class="first">
            <h2>手机</h2>
            <ul>
                <li><a href="">HUAWEI Mate系列</a></li>
                <li><a href="">荣耀</a></li>
                <li><a href="">HUAWEI P系列</a></li>
                <li><a href="">荣耀畅玩系列</a></li>
                <li><a href="">HUAWEI nova系列</a></li>
                <li><a href="">华为畅享系列</a></li>
                <li><a href="">HUAWEI 麦芒系列</a></li>
                <li><a href="">移动4G+专区</a></li>
            </ul>
            <div>
                <a href="">查看更多></a>
            </div>
        </div>
        <div class="second">
            <ul>
                <li>
                    <a href="">
                            <img src="../../../public/container/fifthFloor/11.jpg">
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="gridInfo">
                            <img src="../../../public/container/fifthFloor/12.png">
                        </div>
                        <div class="gridTitle"></div>
                        <p class="gridDescribe"></p>
                        <p class="gridPrice"></p>
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
#fifthFloor>.first>h2,                                              /*第一个div里面的h2,ul,div设置成行内块*/
#fifthFloor>.first>ul,  
#fifthFloor>.first>div{
    display: inline-block;
}
#fifthFloor>.first{                                                        /*上面div列表的大小样式*/
    width: 1200px;
    margin: 0 auto;
}
#fifthFloor>.second{                                                        /*下面div列表的大小样式*/
    width: 1200px;
    margin: 0 auto;
}
#fifthFloor>.first>h2{
    float: left;                                                            /*h2元素内的字体样式*/
    font-size: 26px;
    font-weight: 500;
    margin-top: 5px;
}
#fifthFloor>.first>ul{

}
#fifthFloor>.first>ul li a{                                                 /*上面div中间ul里面a的字体的样式*/
    color:#A699A6;
    font-size: 14px;
}
#fifthFloor>.first>ul li a:hover{                                           /*a变迁hover的样式*/
    color:#CB2469;
}
#fifthFloor>.first>div{                                                     /*最右边div靠右浮动*/
    float: right;
    margin-top: 10px;
}
#fifthFloor>.first>div a{                                                   /*最右边div里面a标签字体的样式*/
    color:#000;
}
#fifthFloor>.first>div a:hover{                                             /*最右边div的里面a标签的hover样式*/
    color:#CB2469;
}

#fifthFloor>.second>ul>li>a>.gridInfo img{                                  /*下面div的ul li里面除了第一个img外所有img的大小*/
    width: 150px;height: 150px;
}

</style>

