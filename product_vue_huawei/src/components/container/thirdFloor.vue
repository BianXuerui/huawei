<template>
    <div id="thirdFloor">
        <h2 class="title">
            精品推荐
        </h2>
        <div class="thirdAll">
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
    data(){
        return {
            ulImgStyle:{//专门控制ulImgs的样式
            //因为ulImgs在整个效果中会有两个样式发生变化,所有必须有两个属性来支持变化
            width:0,
            'margin-left':0,//记录ul已经左移的li的次数
            },
            
            moved:0,
            myList:{}
        }
    },
    computed:{
        btnLeftDisabled(){
            return this.moved==0;
        },
        btnRightDisabled(){
            return this.moved>=this.myList.length-5
        }
    },
    methods:{
        movedLeft(){
            if(this.btnRightDisabled==false){
                this.moved++;
                this.ulImgStyle['margin-left']=this.moved*-240.8+"px";
               console.log(this.moved);
            }
        },
        movedRight(){
            if(this.btnLeftDisabled==false){
                
                this.moved--;
                this.ulImgStyle['margin-left']=this.moved*-240.8+"px";
                console.log(this.moved);
            }
        },
        LoadList(){
            var url = "http://127.0.0.1:3000/listOne";
            this.axios.get(url).then((result)=>{
                console.log(result.data.result);
                this.myList = result.data.result;
                this.ulImgStyle.width = this.myList.length*240.8+"px";
            })
        }
    },
    created(){
        this.LoadList();
    }
}
</script>
<style>
*{margin:0;padding: 0;}
em{font-style: normal;font-weight: 400;width: 100%;height: 100%;}
#thirdFloor{
    position: relative;
}
#thirdFloor ul::after{                            /*清除ul的浮动*/
    content: "";
    clear: both;
    display: block;
}
#thirdFloor>.thirdAll>ul{                         /*ul移动的时候加一个动画效果*/
    transition: margin-left .5s linear;
}
#thirdFloor>.thirdAll>ul>li{                      /*清除以前li的行高,让'爆款'上面没有距离*/
    line-height: 0px;
}
#thirdFloor>.thirdAll{                              /*让列表里面多余的商品隐藏*/
    overflow: hidden;
    height: 305px;
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
#thirdFloor>.thirdAll>ul>li:nth-child(6),           /*第6个和11个limargin-left:0px*/
#thirdFloor>.thirdAll>ul>li:nth-child(11){
    /* margin-left: 0px; */
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
    display: inline-block;                                                         /*爆款框*/
    padding: 0 9px;
    margin: 0 auto;
    height: 22px;
    line-height: 22px;
    color: #fff;
    border-radius: 0 0 6px 6px;
    background-color: #ff8486;
}

#thirdFloor .btnLeft,#thirdFloor .btnRight{                                       /*左右按钮的样式*/
    width: 36px;height: 73px;
    background-color: #F0F0F0;  
}
#thirdFloor .btnLeft{                                                             /*左边按钮*/
    position: absolute;
    top: 127px;
    left: 0;
    border-radius: 0 10px 10px 0; 
}
#thirdFloor .btnRight{                                                            /*右边按钮*/
    position: absolute;
    top: 127px;
    left: 1156px;
    border-radius: 10px 0 0 10px;
}
#thirdFloor .hidden{                                                              /*当按钮的某个条件为true是应用此样式*/
    display: none;
}
#thirdFloor .btnLeft img{                                                         /*向左按钮图片的位置大小*/
    width: 35px;height: 35px;
    position: absolute;
    top: 17px;
    left: -3px;
}
#thirdFloor .btnRight img{                                                         /*向右按钮图片的位置大小*/
    width: 35px;height: 35px;
    position: absolute;
    top: 17px;
    left: 0px;
}
</style>


