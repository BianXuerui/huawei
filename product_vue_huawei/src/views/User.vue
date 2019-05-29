<template>
    <div>
        <div>
            <user-header></user-header>
        </div>
        <div>
            <user-container></user-container>
        </div>
        <div>
            <user-footer></user-footer>
        </div>
    </div>
</template>
<script>
import userHeader from '@/components/user/userHeader.vue'
import userContainer from '@/components/user/container.vue'
import userFooter from '@/components/user/userFooter.vue'

export default {
    data(){
        return {}
    },
    components:{
        userHeader,
        userContainer,
        userFooter,
    }   
}
</script>
<style>
body{
    overflow-x: hidden;
}
</style>

