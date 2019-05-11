<template>
    <div id="firstFloor">
        <ul>
            <li>
                <a href="">
                    <img src="../../../public/container/firstFloor/1.jpg">
                </a>
            </li>
            <li>
                <a href="">
                    <img src="../../../public/container/firstFloor/2.jpg">
                </a>
            </li>
            <li>
                <a href="">
                    <img src="../../../public/container/firstFloor/3.jpg">
                </a>
            </li>
            <li>
                <a href="">
                    <div>
                        <img src="../../../public/container/firstFloor/4.jpg">
                    </div>
                </a>
            </li>
        </ul>
    </div>
</template>
<script>
export default {
    
}
</script>
<style>
    *{margin: 0;padding: 0};                                    /*默认样式清零*/
    #firstFloor{
        width: 100vw;
    }
    #firstFloor>ul::after{                                      /*清除ul的浮动*/
        display: block;
        clear: both;
        content: "";
    }
    #firstFloor>ul{                                             /*设置ul的在页面的显示位置*/
        margin-left: 9rem;
        margin-top: 5rem;
    }
    #firstFloor>ul>li{                                          /*给li设置一个高度,让图片充满没有多余白框*/
        height: 12.5rem;                                        /*给li的框一个高 让鼠标悬停阴影符合需求*/
        /* border: 1px solid red; */
        border-radius: 10px;                                    /*让li框的样式和图片的样式保持*/
        margin-left: 0.8rem;
    }
    #firstFloor img{
        border-radius: 10px;
    }
    #firstFloor>ul>li:hover{                                    /*鼠标放入li让li框有个黑色阴影*/
        box-shadow: -5px 10px 50px 5px #EDEDED;
        transition: 0.5s;
    }
</style>


