<template>
    <div id="seventhFloor">
        <!-- 一楼 -->
        <div class="first">
            <h2>智能穿戴</h2>
            <ul>
                <li><a href="">手环</a></li>
                <li><a href="">手表</a></li>
                <li><a href="">VR</a></li>
            </ul>
            <div>查看更多></div>
        </div>
        <!-- 二楼 -->
        <div class="second">
            <ul>
                <li><a href=""><img src="../../../public/container/seventhFloor/11.jpg"></a></li>
                <li v-for="item in watchesList" :key="item.id">
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
                        <p class="gridTips" v-if="item.ptips.length>0">
                            <em>
                                <span>{{item.ptips}}</span>
                            </em>
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
    props:["watchesList"],
    data(){
        return {
            ulImgStyle:{
                width:0,
                'margin-left':0, 
            },
            moved:0,
            myList:{}
        }
    },
    computed:{
        btnLeftDisabled(){
            return this.moved == 0;
        },
        btnRightDisabled(){
            return this.moved >= this.myList.length-6
        }
    },
    methods:{
        movedLeft(){
            if(this.btnRightDisabled==false){
                this.moved++;
                this.ulImgStyle['margin-left'] = this.moved*-200+"px";
            }
        },
        movedRight(){
            if(this.btnLeftDisabled == false){
                this.moved--;
                this.ulImgStyle['margin-left'] = this.moved*-200+"px";
            }
        },
        LoadList(){
        var url = "http://127.0.0.1:3000/listTwo";
        this.axios.get(url).then((result)=>{
            this.myList = result.data.result;
            this.ulImgStyle.width = this.myList.length*200+"px"
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
#seventhFloor{                                                              /*整个七楼容器的大小和位置*/
    width: 1200px;
    margin: 2rem auto 0; 
    /* border: 1px solid; */
}
#seventhFloor::after{                                                       /*清除.first容器的浮动*/
    content: "";
    display: block;
    clear: both;
}
#seventhFloor::before{                                                       /*给.first容器里面的最上面加一个空table*/
    content: "";
    display: table;
}
#seventhFloor>.first>h2,                                                    /*整个.first容器所有元素左浮动*/
#seventhFloor>.first>ul{
    float: left;
}
#seventhFloor>.first>h2{                                                    /*.first容器里面h2字体的粗细*/
    font-weight: 500;
    line-height: 40px;
}

#seventhFloor>.first>ul>li>a{                                               /*.first容器里面a字体颜色*/
    color:#9F9F9F;
}
#seventhFloor>.first>ul>li>a:hover{                                         /*li a hover的颜色*/
    color:#CB242B;
}
#seventhFloor>.first>div{                                                   /*.first容器里面div靠右浮动*/
    float: right;
    line-height: 40px;
}

#seventhFloor>.second>ul{                                                   /*由于第一个容器浮动不占位,让第二个容器距离上边距有距离*/
    margin-top: 3rem;
}
#seventhFloor>.second>ul>li{                                                /*第二个容器里面每个li的大小位置背景颜色*/
    width: 230px;height: 290px;
    background-color: #F9F9F9;
    margin-left: 10px;
    border-radius: 10px;
    position: relative;
}
#seventhFloor>.second>ul>li:nth-child(5),                                   /*第二个容器第二排li距离上面和下面的距离*/
#seventhFloor>.second>ul>li:nth-child(6),
#seventhFloor>.second>ul>li:nth-child(7),
#seventhFloor>.second>ul>li:nth-child(8),
#seventhFloor>.second>ul>li:nth-child(9){
    margin-top:10px;
}
#seventhFloor>.second>ul>li:nth-child(1),
#seventhFloor>.second>ul>li:nth-child(5){
    margin-left: 0px;
}
#seventhFloor>.second>ul>li>a>.gridImg>img{                                 /*每个li里面img的大小*/
    width: 150px;height: 150px;
    margin-top: 30px;
}
#seventhFloor>.second>ul>li img{                                            /*第二个容器里面第一个大img的大小及样式*/
    border-radius: 10px;
    width: 470px;height:290px;
}
#seventhFloor>.second>ul>li:first-child{                                    /*第二个容器的一个大的img图片容器的大小位置*/
    width: 458px;
    margin-right: 12px;
}
#seventhFloor>.second>ul>li:hover{                                          /*第二个容器的一个大的img图片鼠标停留属性*/
    box-shadow: -5px 10px 50px 5px #EDEDED;                 
    transition: 0.5s;
}
#seventhFloor>.second>ul>li>.gridInfo{                                      /*第二个容器里面.gridInfo的字体*/

}
#seventhFloor>.second>ul>li>.gridDescribe{                                  /*第二个容器里面.gridDescribe的字体*/
    font-size: 12px;
    color: #777777;
    line-height: 15px;
}
#seventhFloor>.second>ul>li>.gridPrice{                                     /*第二个容器里面.gridPrice的字体*/
    font-size: 13px;
    color: #D00230;
    line-height: 50px;
}



#seventhFloor>.third>ul>li:first-child{                                     /*第三个容器里面,第一个li左边外边距为0*/
    margin-left: 0px;
}
#seventhFloor>.third>ul>li{                                                 /*第三个容器里面,每个li的width和height样式*/
    width: 190px;height: 190px;
    background-color: #F9F9F9;
    margin-left: 10px;
    border-radius: 10px;
    position: relative;
}
#seventhFloor>.third{                                                       /*让列表里面多余的商品隐藏*/
    overflow: hidden;
    height: 15rem;
    position: relative;
}
/* #seventhFloor>.third>ul>li:nth-child(7){                                    
    margin-left: 0px;
} */
#seventhFloor>.third>ul>li>a>.thirdImg>.thirdImgP>img{                      /*第三个容器里,img图片的大小*/
    width: 120px;height: 120px;
    margin-top: 35px;
}
#seventhFloor>.third>ul>li>a>.thirdImg>p:nth-child(2){                      /*第三个容器里,.gridDescribe框的样式 字体的样式*/
    display: block;
    /* border: 1px solid; */
    background-color: #F3F3F3;
    border-radius: 0 0 10px 10px;
    font-size: 12px;
    color: #777777;
}
#seventhFloor>.third>ul>li>a>.gridTitle{                                    /*第三个容器里,.gridTitle字体的样式*/
    line-height: 30px;
    color: #3A3A3A;
    font-size: 14px;
    font-weight: 500;
}
#seventhFloor>.third>ul>li>a>.gridPrice{
    line-height: 10px;
    color: #D00230;
}

#seventhFloor .gridTips{
    position: absolute;
    top:0;
    left: 0;
    width: 100%;
    /* border: 1px solid; */
    height: 48px;
    display: block;
}  
#seventhFloor .gridTips span{   
    display: inline-block;                                      /*爆款框*/
    padding: 0 9px;
    margin: 0 auto;
    height: 22px;
    /* line-height: 22px; */
    color: #fff;
    border-radius: 0 0 6px 6px;
    background-color: #ff8486;
}

#seventhFloor .hidden{
    display: none;
}

#seventhFloor .btnLeft,                                         /*左右两个按钮容器框的大小*/
#seventhFloor .btnRight{
    width: 36px;height: 73px;
    background-color: #F0F0F0;  
}
#seventhFloor .btnLeft{                                         /*左边按钮框的位置样式*/
    position: absolute;
    top: 65px;
    left: 0px;
    border-radius: 0 10px 10px 0;
}
#seventhFloor .btnRight{                                        /*右边按钮框的位置样式*/
    position: absolute;
    top: 65px;
    left: 1154px;
    border-radius: 10px 0 0 10px;
}
#seventhFloor .btnLeft img{                                     /*左边按钮框的图片的大小位置*/
    width: 35px;height: 35px;
    position: absolute;
    top: 19px;
    left: 0px;
}
#seventhFloor .btnRight img{                                    /*右边按钮框的图片的大小位置*/
    width: 35px;height: 35px;
    position: absolute;
    top: 19px;
    left: 0px;
}
</style>


