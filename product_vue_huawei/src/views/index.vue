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
        
    </div>
</template>
<script>
import myHeader from '@/components/Header.vue'
import myRotation from '@/views/Rotation.vue'
import myRotation1 from '@/views/Rotation1.vue'
export default {
    components:{
        myHeader,
        myRotation,
        myRotation1,
    },
    data() {
        return {
            
        }
    },
}
</script>
<style scope>

</style>
