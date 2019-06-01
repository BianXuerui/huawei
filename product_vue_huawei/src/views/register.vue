<template>
    <div>
        <user-header></user-header> 
        <div class="reg">
            <div class="user">
                <span>用户账号</span>
                <input type="text" placeholder="请输入账号" id="uname" autofocus @focus="showUname" @blur="unameVali" v-model="uname.value">
            </div>
            <div :class="uname.class" :style="uname.style" v-text="uname.msg"></div>
            <div class="pwd1">
                <span>用户密码</span>
                <input type="password" placeholder="请输入密码" id="upwd" @focus="showUpwd" @blur="upwdVali" v-model="upwd.value">
            </div>
            <div :class="upwd.class" :style="upwd.style">密码长度在6-16位之间</div>
            <div class="psd2">
                <span>确认密码</span>
                <input type="password" placeholder="请确认密码" id="upwd1" @focus="showUpwd1" @blur="upwd1Vali" v-model="upwd1.value">
            </div>
            <div :class="upwd1.class" :style="upwd1.style">应与第一次输入密码一致</div>
            <div class="phone">
                <span>用户手机</span>
                <input type="text" placeholder="请输入手机号" id="phone" @focus="showPhone" @blur="phoneVali" v-model="phone.value">
            </div>
            <div :class="phone.class" :style="phone.style">请输入正确的手机号</div>
            <div class="email">
                <span>用户邮箱</span>
                <input type="text" placeholder="请输入邮箱" id="email" @focus="showEmail" @blur="emailVali" v-model="email.value">
            </div>
            <div :class="email.class" :style="email.style">请输入正确的邮箱</div>
            <a href="javascript:;" @click="reg">立即注册</a>
        </div>
    </div>
</template>
<script>
import userHeader from "@/components/user/userHeader"
class dataTpl{
    constructor(){
        this.style = {opacity:0};
        this.class = {suc:true , fail:false};
        this.status = true;
        this.value = "";
        this.code = 0;
    }
}
export default {
    data(){
        return {
            uname:new dataTpl(),
            upwd:new dataTpl(),
            upwd1:new dataTpl(),
            phone:new dataTpl(),
            email:new dataTpl(),
        }
    },
    methods:{
        // 用户名
        showUname(){
            this.uname.style.opacity = 1;
            this.uname.msg = "用户名长度为6-9位之间";
        },
        unameVali(){
            var length = uname.value.length;
            this.uname.class.fail = false;
            this.uname.class.suc = false;
            if(length < 6 || length > 9){
                this.uname.class.fail = true;
                this.uname.msg="用户名长度不符合";
                this.uname.code = 0;
            }else{
                this.axios.get("http://127.0.0.1:3000/vali?uname="+this.uname.value)
                .then(res=>{
                    console.log(res.data.code)
                    if(res.data.code == 1){
                        this.uname.class.suc = true;
                        this.uname.msg = "用户名可以使用";
                        this.uname.code = 1;
                    }else{
                        this.uname.class.fail = true;
                        this.uname.msg = "用户名已被占用";
                        this.uname.code = 0;
                    }
                });
            }
        },
        // 密码
        showUpwd(){
            this.upwd.style.opacity = 1;
        },
        upwdVali(){
            var length = this.upwd.value.length;
            this.upwd.class.fail = false;
            this.upwd.class.suc = false;
            if(length < 6 || length > 16){
                this.upwd.class.fail = true;
                this.upwd.code = 0;
            }else{
                this.upwd.class.suc = true;
                this.upwd.code = 1;
            }
        },
        // 确认密码
        showUpwd1(){
            this.upwd1.style.opacity = 1;
        },
        upwd1Vali(){
            var length = this.upwd1.value.length;
            this.upwd1.class.fail = false;
            this.upwd1.class.suc = false;
            if(this.upwd1.value == this.upwd.value && this.upwd.value){
                this.upwd1.class.suc = true;
                this.upwd1.code = 1;
            }else{
                this.upwd1.class.fail = true;
                this.upwd1.code = 0;
            }
        },
        // 手机号
        showPhone(){
            this.phone.style.opacity = 1;
        },
        phoneVali(){
            var reg = /^1[3-9]\d{9}$/;
            this.phone.class.fail = false;
            this.phone.class.suc = false;
            if(!reg.test(this.phone.value)){
                this.phone.class.fail = true;
                this.phone.code = 0;
            }else{
                this.phone.class.suc = true;
                this.phone.code = 1;
            }
        },
        // 邮箱
        showEmail(){
            this.email.style.opacity = 1;
        },
        emailVali(){
            var reg = /^\w+@\w+\.\w+$/;
            this.email.class.fail = false;
            this.email.class.suc = false;
            if(!reg.test(this.email.value)){
                this.email.class.fail = true;
                this.email.code = 0;
            }else{
                this.email.class.suc = true;
                this.email.code = 1;
            }
        },
        reg(){
            if(this.uname.code==1&&this.upwd.code==1&&this.upwd1.code==1&&this.phone.code==1&&this.email.code==1){
                var uname = this.uname.value;
                var upwd = this.upwd.value;
                var phone = this.phone.value;
                var email = this.email.value;
                this.axios.post('http://127.0.0.1:3000/reg',`uname=${uname}&upwd=${upwd}&phone=${phone}&email=${email}`)
                .then(res=>{
                    if(res.data.code == 1){
                        alert("注册成功");
                    }
                })
            }
        }
    },
    components:{
        userHeader
    }
}
</script>
<style scoped>
*{margin: 0;padding: 0;}
.reg{
    /*整个注册容器的大小和位置*/
    width: 960px;height: 600px;
    /* border: 1px solid; */
    background-color: #fff;
    margin: 40px auto 0;
}
.reg div{
    /* 注册容器里面每个input外面容器的大小位置样式 */
    margin: 1rem auto;
    width: 20rem;height: 30px;
    border: 1px solid #D9D9D9;
    border-radius: 20px;
}
.reg div:nth-child(even){
    border: 0px;
}
.reg div span{
    display: inline-block;
    height: 30px;
    line-height: 30px;
    margin: 0 0 0 10px;
    padding: 0 5px 0 0;
    border-right: 1px solid #D9D9D9;
    font-size: 14px;
    font-weight: 600;
}
.reg div input{
    /* input的样式 */
    height: 25px;
    margin: 0 0 0 1rem;
    outline: none;
    border: 0px;
}
.reg a{
    /* 立即注册按钮的样式 */
    display: block;
    width: 13rem;height: 40px;
    border: 1px solid;
    text-align: center;
    line-height: 40px;
    border-radius: 30px;
    margin: 3rem auto;
    background-color: #B40707;
    color: #fff;
}
.reg a:hover{
    /* 按钮hover样式 */
    background-color: #C70000;
}
.reg .fail{
    color: red;
}
.reg .suc{
    color: green;
}

</style>
