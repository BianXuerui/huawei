<template>
    <div>
        <div class="header">
            <my-header></my-header>
        </div>
        <div class="rotation">
            <my-rotation></my-rotation>
        </div>
        <div class="rotation1">
            <my-rotation1></my-rotation1>
        </div>
        <div class="firstFloor">
            <my-firstFloor></my-firstFloor>
        </div>
        <div class="secondFloor">
            <my-secondFloor></my-secondFloor>
        </div>
        <div class="thirdFloor">
            <my-thirdFloor></my-thirdFloor>
        </div>
    </div>
</template>
<script>
import myHeader from '@/components/Header.vue'
import myRotation from '@/components/header/Rotation.vue'
import myRotation1 from '@/components/header/Rotation1.vue'
import myFirstFloor from '@/components/container/firstFloor.vue'
import mySecondFloor from '@/components/container/secondFloor.vue'
import myThirdFloor from '@/components/container/thirdFloor.vue'
export default {
    components:{
        myHeader,
        myRotation,
        myRotation1,
        myFirstFloor,
        mySecondFloor,
        myThirdFloor,
    },
    data() {
        return {
            
        }
    },
}
</script>
<style scope>

</style>
