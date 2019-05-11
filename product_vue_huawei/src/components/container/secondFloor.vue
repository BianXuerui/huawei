<template>
    <div id="secondFloor">
        <!-- 二楼title -->
        <h2 class="title">
            热销单品
        </h2>
        <!-- 二楼右侧div -->
        <div class="secondAll">
            <!-- 二楼左侧大图片 -->
            <div class="secondLeft">
                <img src="../../../public/container/secondFloor/1.jpg">
            </div>
            <!-- 二楼右侧所有容器 -->
            <div class="secondRight">
                <!-- 二楼右上容器 -->
                <ul>
                    <li>
                        <a href="">
                            <img class="gridImg" src="../../..//public/container/secondFloor/11.png">
                            <div class="gridTitle">荣耀8X</div>
                            <p class="gridDescribe">64GB降100 老用户再送数据线</p>
                            <p class="gridPrice">￥1299</p>
                            <p class="gridTips">
                                <em>
                                    <span>爆款</span>
                                </em>
                            </p>
                        </a>
                        </li>
                    <li>
                        <a href="">
                            
                        </a>
                    </li>
                    <li>
                        <a href="">

                        </a>
                    </li>
                    <li>
                        <a href="">

                        </a>
                    </li>
                </ul>
                <!-- 二楼右下容器 -->
                <ul>
                    <li>
                        <a href="">
                            
                        </a>
                    </li>
                    <li>
                        <a href="">

                        </a>
                    </li>
                    <li>
                        <a href="">

                        </a>
                    </li>
                    <li>
                        <a href="">

                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style>
*{margin: 0;padding: 0;}
em{font-style: normal;font-weight: 400;width: 100%;height: 100%;}
#secondFloor>.secondAll>.secondRight>ul::after{                     /*清除ul的浮动*/
    content: "";
    clear: both;
    display: block;
}
#secondFloor>.secondAll>.secondRight>ul{                           /*清除ul上面的margin*/
    margin: 0;
}
#secondFloor>.secondAll>.secondRight>ul>li{                      /*清除以前li的行高,让'爆款'上面没有距离*/
    line-height: 0px;
}
#secondFloor .secondRight ul:nth-child(2){
    margin-top: 15px; 
}



#secondFloor{                                                    /*整个二楼布局*/
    margin:2rem 0 0 10rem; 
}
#secondFloor>.secondAll{                                        /*二楼里面两个div弹性布局*/
    display: flex;
}
#secondFloor>.title{
    font-weight: 400;
    margin-bottom: 0.7rem;
}
#secondFloor>.secondAll>.secondLeft>img{                        /*二楼左侧大图圆角*/
    border-radius: 10px;
}
#secondFloor>.secondAll>.secondLeft:hover{                      /*二楼左侧大图鼠标停留交互事件*/
    box-shadow: -5px 10px 50px 5px #EDEDED;
    transition: 0.5s;
}

#secondFloor>.secondAll>.secondRight>ul>li img{                 /*二楼右侧图片的大小*/
    width: 150px;
    height: 150px;
    margin: 35px auto 0;
}
#secondFloor>.secondAll>.secondRight>ul>li{                     /*二楼右侧li框的大小*/
    width: 228px;
    height: 288px;
    /* border: 1px solid; */
    margin-left: 0.8rem;
    background-color: #F9F9F9;
    border-radius: 10px;
    position: relative;                                         /*为了给li里面的爆款做指明灯*/
}
#secondFloor .gridTitle{    
    font-weight: 400;                                    /*li里面标题*/
    width: 210px;
    display: block;
    text-align: center;
    white-space: nowrap;
    /* overflow: hidden; */
    padding: 0;
    margin: 25px auto 0;
}
#secondFloor .gridDescribe{                                     /*描述信息的字体大小颜色*/
    width: 190px;
    display: block;
    font-size: 12px;
    color: #777777;
    text-align: center;
    white-space: nowrap;
    /* overflow: hidden; */
    margin:20px auto 0;
}
#secondFloor .gridPrice{                                        /*价格字体颜色*/
    color: #D0021B;
    margin: 25px auto 0;
}
#secondFloor .gridTips{
    position: absolute;
    top:0;
    left: 0;
    width: 100%;
    /* border: 1px solid; */
    height: 48px;
    display: block;
}  
#secondFloor .gridTips span{   
    display: inline-block;                                 /*爆款框*/
    padding: 0 9px;
    margin: 0 auto;
    height: 22px;
    line-height: 22px;
    color: #fff;
    border-radius: 0 0 6px 6px;
    background-color: #ff8486;
}

#secondFloor>.secondAll>.secondRight>ul>li:hover{
    box-shadow: -5px 10px 50px 5px #EDEDED;
    transition: 0.5s;
}

</style>
