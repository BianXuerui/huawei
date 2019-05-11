<template>
    <div id="thirdFloor">
        <h2 class="title">
            精品推荐
        </h2>
        <div class="thirdAll">
            <ul>
                <li>
                    <a href="">
                        <div class="thirdImg">
                            <p class="thirdImgP">
                            <img src="../../../public/container/thirdFloor/1.png">
                            </p>
                            <p class="gridDescribe">
                                樱粉金上市 定金100抵300
                            </p>
                        </div>
                        <div class="gridTitle">
                            HUAWEI MateBook X Pro 2019款
                        </div>
                        <p class="gridPrice">
                            ￥8999
                        </p>
                        <p class="gridTips">
                            <em>
                                <span>新品上市</span>
                            </em>
                        </p>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="thirdImg">
                            <p class="thirdImgP">
                            <img src="../../../public/container/thirdFloor/1.png">
                            </p>
                            <p class="gridDescribe">
                                樱粉金上市 定金100抵300
                            </p>
                        </div>
                        <div class="gridTitle">
                            HUAWEI MateBook X Pro 2019款
                        </div>
                        <p class="gridPrice">
                            ￥8999
                        </p>
                        <p class="gridTips">
                            <em>
                                <span>新品上市</span>
                            </em>
                        </p>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="thirdImg">
                            <p class="thirdImgP">
                            <img src="../../../public/container/thirdFloor/1.png">
                            </p>
                            <p class="gridDescribe">
                                樱粉金上市 定金100抵300
                            </p>
                        </div>
                        <div class="gridTitle">
                            HUAWEI MateBook X Pro 2019款
                        </div>
                        <p class="gridPrice">
                            ￥8999
                        </p>
                        <p class="gridTips">
                            <em>
                                <span>新品上市</span>
                            </em>
                        </p>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="thirdImg">
                            <p class="thirdImgP">
                            <img src="../../../public/container/thirdFloor/1.png">
                            </p>
                            <p class="gridDescribe">
                                樱粉金上市 定金100抵300
                            </p>
                        </div>
                        <div class="gridTitle">
                            HUAWEI MateBook X Pro 2019款
                        </div>
                        <p class="gridPrice">
                            ￥8999
                        </p>
                        <p class="gridTips">
                            <em>
                                <span>新品上市</span>
                            </em>
                        </p>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="thirdImg">
                            <p class="thirdImgP">
                            <img src="../../../public/container/thirdFloor/1.png">
                            </p>
                            <p class="gridDescribe">
                                樱粉金上市 定金100抵300
                            </p>
                        </div>
                        <div class="gridTitle">
                            HUAWEI MateBook X Pro 2019款
                        </div>
                        <p class="gridPrice">
                            ￥8999
                        </p>
                        <p class="gridTips">
                            <em>
                                <span>新品上市</span>
                            </em>
                        </p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style>
*{margin:0;padding: 0;}
em{font-style: normal;font-weight: 400;width: 100%;height: 100%;}
#thirdFloor ul::after{                     /*清除ul的浮动*/
    content: "";
    clear: both;
    display: block;
}
#thirdFloor>.thirdAll>ul>li{                      /*清除以前li的行高,让'爆款'上面没有距离*/
    line-height: 0px;
}
#thirdFloor>.thirdAll>ul{                          /*ul容器距离上面title标题的距离*/
    margin-top: 1rem;
}
#thirdFloor>.thirdAll>ul>li:nth-child(1){          /*第一个li靠右的margin清零,实现和li容器左侧和上面title对齐*/
    margin-left: 0px;
}
#thirdFloor>.thirdAll>ul>li{
    margin-left: 0.8rem;
}

#thirdFloor{
    width: 1200px;
    height: 360px;
    /* border:1px solid; */
    box-sizing: border-box;
    margin: 2rem auto;
}
#thirdFloor>.title{                                     /*三楼标题字体*/
    font-weight: 400;
}
#thirdFloor>.thirdAll>ul>li{                            /*三楼每个li容器的大小*/
    width: 228px;height: 295px;
    box-sizing: border-box;
    /* border:1px solid; */
    position: relative;
}
#thirdFloor .thirdImg{                                  /*三楼带图片的小容器的样式*/
    width: 228px;
    box-sizing: border-box;
    background-color: #fff;
    box-shadow: -2px 5px 10px 1px #EDEDED;
    border-radius:6px; 
}
#thirdFloor img{                                        /*三楼图片大小*/
    width: 150px;height: 150px;
}
#thirdFloor .thirdImgP{
    padding-top: 2.5rem;
    margin-bottom: 1rem;
}
#thirdFloor .gridDescribe{                              /*三楼图片外侧容器的大小 样式*/
    color:#7C7C7C;
    display: block;
    width: 229px;height: 36px;
    box-sizing: border-box;
    background-color: #F3F3F3;
    border-radius: 0 0 6px 6px; 
    line-height: 2.5rem;
    
}
#thirdFloor .gridTitle{                                 /*三楼每件商品的标题样式*/
    margin-top: 0.5rem;
    margin-top: 1rem;
    font-size: 13px;
}
#thirdFloor .gridPrice{                                 /*三楼没见商品的价格样式*/
    color:#d0021b;
    margin-top: 1.5rem;
}

#thirdFloor .gridTips{                                  /*三楼'爆款'框框样式*/
    position: absolute;
    top:0;
    left: 0;
    width: 100%;
    /* border: 1px solid; */
    height: 48px;
    display: block;
} 
#thirdFloor .gridTips span{   
    display: inline-block;                                 /*爆款框*/
    padding: 0 9px;
    margin: 0 auto;
    height: 22px;
    line-height: 22px;
    color: #fff;
    border-radius: 0 0 6px 6px;
    background-color: #ff8486;
}
</style>


