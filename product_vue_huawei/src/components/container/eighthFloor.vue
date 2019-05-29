<template>
    <div id="eighthFloor">
         <!-- 一楼 -->
        <div class="first">
            <h2>智能家具</h2>
            <ul>
                <li><a href="javascript:;">路由器</a></li>
                <li><a href="javascript:;">子母/分布式路由</a></li>
                <li><a href="javascript:;">电力猫/wifi放大器</a></li>
                <li><a href="javascript:;">随性wifi</a></li>
                <li><a href="javascript:;">电视盒子</a></li>
                <li><a href="javascript:;">照明</a></li>
                <li><a href="javascript:;">清洁</a></li>
                <li><a href="javascript:;">节能</a></li>
                <li><a href="javascript:;">环境</a></li>
                <li><a href="javascript:;">安防</a></li>
                <li><a href="javascript:;">健康</a></li>
                <li><a href="javascript:;">厨电</a></li>
                <li><a href="javascript:;">影音</a></li>
                <li><a href="javascript:;">卫浴</a></li>
            </ul>
            <div>查看更多></div>
        </div>
        <!-- 二楼 -->
        <div class="second">
            <ul>
                <li><a href=""><img src="../../../public/container/eighthFloor/11.jpg"></a></li>
                <li v-for="item in homesList" :key="item.id">
                    <a href="">
                        <div class="gridImg"><img :src="'http://127.0.0.1:3000/'+item.pimg"></div>
                    </a>
                    <div class="gridInfo">{{item.ptitle}}</div>
                    <p class="gridDescribe">{{item.pdesc}}</p>
                    <p class="gridPrice">￥{{item.pprice}}</p>
                    <p class="gridTips" v-if="item.ptips.length>0">
                            <em>
                                <span>{{item.ptips}}</span>
                            </em>
                        </p>
                </li>
                <!-- <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li> -->
            </ul>
        </div>
        <!-- 三楼 -->
        <div class="third">
            <ul :style="ulImgStyle">
                <li v-for="item in myList" :key="item.id">
                    <a href="javascript:;">
                        <div class="thirdImg">
                            <p class="thirdImgP">
                            <img :src="'http://127.0.0.1:3000/'+item.pimg">
                            </p>
                            <p class="gridDescribe">
                                {{item.pdesc}}
                            </p>
                        </div>
                        <div class="gridTitle">
                            {{item.ptitle}}
                        </div>
                        <p class="gridPrice">
                            ￥{{item.pprice}}
                        </p>
                    </a>
                </li>
                <!-- <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li> -->
            </ul>
            <div class="btnLeft" :class="btnLeftDisabled==true?'hidden':''" @click="movedRight">
                <img src="../../../public/container/thirdFloor/left.png">
            </div>
            <div class="btnRight" :class="btnRightDisabled==true?'hidden':''" @click="movedLeft">
                <img src="../../../public/container/thirdFloor/right.png">
            </div>
        </div>
    </div>
</template>
<script>
export default {
    props:['homesList'],
    data(){
        return {
            ulImgStyle:{
                width:0,
                'margin-left':0
            },
            myList:{},
            moved:0
        }
    },
    computed:{
        btnLeftDisabled(){
            return this.moved == 0;
        },
        btnRightDisabled(){
            return this.moved>=this.myList.length-6
        }
    },
    methods:{
        movedLeft(){
            if(this.btnRightDisabled == false){
                this.moved++;
                this.ulImgStyle['margin-left']=this.moved*-200+"px";
            }
        },
        movedRight(){
            if(this.btnLeftDisabled == false){
                this.moved--;
                this.ulImgStyle['margin-left']=this.moved*-200+"px";
            }
        },
        LoadList(){
            var url = "http://127.0.0.1:3000/listThird";
            this.axios.get(url).then((result)=>{
            this.myList = result.data.result;
            this.ulImgStyle.width = this.myList.length*200+"px";
            })
        }    
    },
    created(){
        this.LoadList();
    }
}
</script>
<style>
*{margin: 0;padding: 0;}
em{font-style: normal;font-weight: 400;width: 100%;height: 100%;}
#eighthFloor{                                                              /*整个七楼容器的大小和位置*/
    width: 1200px;
    margin: 5rem auto 0; 
    /* border: 1px solid; */
}
#eighthFloor::after{                                                       /*清除.first容器的浮动*/
    content: "";
    display: block;
    clear: both;
}
#eighthFloor::before{                                                       /*给.first容器里面的最上面加一个空table*/
    content: "";
    display: table;
}
#eighthFloor>.first>h2,                                                    /*整个.first容器所有元素左浮动*/
#eighthFloor>.first>ul{
    float: left;
}
#eighthFloor>.first>h2{                                                    /*.first容器里面h2字体的粗细*/
    font-weight: 500;
    line-height: 40px;
}

#eighthFloor>.first>ul>li>a{                                               /*.first容器里面a字体颜色*/
    color:#9F9F9F;
}
#eighthFloor>.first>ul>li{                                                 /*更改.first容器里li的左外边距*/
    margin-left: 1.5rem;
}
#eighthFloor>.first>ul>li>a:hover{                                         /*li a hover的颜色*/
    color:#CB242B;
}
#eighthFloor>.first>div{                                                   /*.first容器里面div靠右浮动*/
    float: right;
    line-height: 40px;
}

#eighthFloor>.second>ul{                                                   /*由于第一个容器浮动不占位,让第二个容器距离上边距有距离*/
    margin-top: 3rem;
}
#eighthFloor>.second>ul>li{                                                /*第二个容器里面每个li的大小位置背景颜色*/
    width: 230px;height: 290px;
    background-color: #F9F9F9;
    margin-left: 10px;
    border-radius: 10px;
    position: relative;
}
#eighthFloor>.second>ul>li:nth-child(5),                                   /*第二个容器第二排li距离上面和下面的距离*/
#eighthFloor>.second>ul>li:nth-child(6),
#eighthFloor>.second>ul>li:nth-child(7),
#eighthFloor>.second>ul>li:nth-child(8),
#eighthFloor>.second>ul>li:nth-child(9){
    margin-top:10px;
}
#eighthFloor>.second>ul>li:nth-child(1),
#eighthFloor>.second>ul>li:nth-child(5){
    margin-left: 0px;
}
#eighthFloor>.second>ul>li>a>.gridImg>img{                                 /*每个li里面img的大小*/
    width: 150px;height: 150px;
    margin-top: 30px;
}
#eighthFloor>.second>ul>li img{                                            /*第二个容器里面第一个大img的大小及样式*/
    border-radius: 10px;
    width: 470px;height:290px;
}
#eighthFloor>.second>ul>li:first-child{                                    /*第二个容器的一个大的img图片容器的大小位置*/
    width: 458px;
    margin-right: 12px;
}
#eighthFloor>.second>ul>li:hover{                                          /*第二个容器的一个大的img图片鼠标停留属性*/
    box-shadow: -5px 10px 50px 5px #EDEDED;                 
    transition: 0.5s;
}
#eighthFloor>.second>ul>li>.gridInfo{                                      /*第二个容器里面.gridInfo的字体*/

}
#eighthFloor>.second>ul>li>.gridDescribe{                                  /*第二个容器里面.gridDescribe的字体*/
    font-size: 12px;
    color: #777777;
    line-height: 15px;
}
#eighthFloor>.second>ul>li>.gridPrice{                                     /*第二个容器里面.gridPrice的字体*/
    font-size: 13px;
    color: #D00230;
    line-height: 50px;
}
#eighthFloor .hidden{
    display: none;
}
#eighthFloor>.third{                                                       /*横向列表加载出来的多余商品隐藏*/                     
    overflow: hidden;
    height: 15rem;
    position: relative;
}
#eighthFloor>.third>ul>li:first-child{                                     /*第三个容器里面,第一个li左边外边距为0*/
    margin-left: 0px;
}
#eighthFloor>.third>ul>li{                                                 /*第三个容器里面,每个li的width和height样式*/
    width: 190px;height: 190px;
    background-color: #F9F9F9;
    margin-left: 10px;
    border-radius: 10px;
}
#eighthFloor>.third>ul>li>a>.thirdImg>.thirdImgP>img{                      /*第三个容器里,img图片的大小*/
    width: 120px;height: 120px;
    margin-top: 35px;
}
#eighthFloor>.third>ul>li>a>.thirdImg>p:nth-child(2){                      /*第三个容器里,.gridDescribe框的样式 字体的样式*/
    display: block;
    /* border: 1px solid; */
    background-color: #F3F3F3;
    border-radius: 0 0 10px 10px;
    font-size: 12px;
    color: #777777;
}
#eighthFloor>.third>ul>li>a>.gridTitle{                                    /*第三个容器里,.gridTitle字体的样式*/
    line-height: 30px;
    color: #3A3A3A;
    font-size: 14px;
    font-weight: 500;
}
#eighthFloor>.third>ul>li>a>.gridPrice{
    line-height: 10px;
    color: #D00230;
}

#eighthFloor .gridTips{
    position: absolute;
    top:0;
    left: 0;
    width: 100%;
    /* border: 1px solid; */
    height: 48px;
    display: block;
}  
#eighthFloor .gridTips span{   
    display: inline-block;                                      /*爆款框*/
    padding: 0 9px;
    margin: 0 auto;
    height: 22px;
    /* line-height: 22px; */
    color: #fff;
    border-radius: 0 0 6px 6px;
    background-color: #ff8486;
}

#eighthFloor .third .btnLeft,
#eighthFloor .third .btnRight{
    width: 36px;height: 73px;
    background-color: #F0F0F0;
}
#eighthFloor .third .btnLeft{
    position: absolute;
    top: 60px;
    left: 0;
    border-radius: 0 10px 10px 0;
}
#eighthFloor .third .btnRight{
    position: absolute;
    top: 60px;
    left: 1154px;
    border-radius: 10px 0 0 10px;
}
#eighthFloor .btnLeft img{
    width: 35px;height: 35px;
    position: absolute;
    top: 17px;
    left: 0px;
}
#eighthFloor .btnRight img{
    width: 35px;height: 35px;
    position: absolute;
    top: 17px;
    left: 0px;
}
</style>


