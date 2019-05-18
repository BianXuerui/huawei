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
        <div class="fourthFloor">
            <my-fourthFloor></my-fourthFloor>
        </div>
        <div class="fifthFloor">
            <my-fifthFloor></my-fifthFloor>
        </div>
        <div class="sixthFloor">
            <my-sixthFloor></my-sixthFloor>
        </div>
        <div class="seventhFloor">
            <my-seventhFloor></my-seventhFloor>
        </div>
        <div class="eighthFloor">
            <my-eighthFloor></my-eighthFloor>
        </div>
        <div class="ninthFloor">
            <my-ninthFloor></my-ninthFloor>
        </div>
        <div class="tenthFloor">
            <my-tenthFloor></my-tenthFloor>
        </div>
        <div class="eleventhFloor">
            <my-eleventhFloor></my-eleventhFloor>
        </div>
        <div class="footer">
            <my-footer></my-footer>
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
import myFourthFloor from '@/components/container/fourthFloor.vue'
import myFifthFloor from '@/components/container/fifthFloor.vue'
import mySixthFloor from '@/components/container/sixthFloor.vue'
import mySeventhFloor from '@/components/container/seventhFloor.vue'
import myEighthFloor from '@/components/container/eighthFloor.vue'
import myNinthFloor from '@/components/container/ninthFloor.vue'
import myTenthFloor from '@/components/container/tenthFloor.vue'
import myEleventhFloor from '@/components/container/eleventhFloor.vue'
import myFooter from '@/components/container/footer.vue'

export default {
    components:{
        myHeader,
        myRotation,
        myRotation1,
        myFirstFloor,
        mySecondFloor,
        myThirdFloor,
        myFourthFloor,
        myFifthFloor,
        mySixthFloor,
        mySeventhFloor,
        myEighthFloor,
        myNinthFloor,
        myTenthFloor,
        myEleventhFloor,
        myFooter,
    },
    data() {
        return {
            
        }
    },
}
</script>
<style scope>
ul::after{
    content: "";
    display: block;
    clear: both;
}
</style>
