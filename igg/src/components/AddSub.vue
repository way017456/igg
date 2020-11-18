<template>
    <div>
        <div class="addsub">
            <span to="" @click="minus">-</span>
            <input type="text" v-model="counter" maxlength="8">
            <span to="" @click="add">+</span>
         </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            counter:1
        }
    },
    methods:{
        add(){
            this.counter = parseInt(this.counter) + 1;
            console.log(this.counter);
        },
        minus(){
            if(this.counter>1){
                this.counter = parseInt(this.counter) - 1;
            }
        }
    }
}
</script>
<style scoped>
.addsub>span{
    color: #bfbfbf;
    font-size: 30px;
    width: 40px;
    line-height: 40px;
    text-align: center;
    height: 40px;
    cursor: pointer;
    transition: all .125s ease;
    display: inline-block;
    text-decoration: none;
    vertical-align: middle;
}
.addsub>:last-child{
    color: #444;
}
.addsub>:last-child:hover{
    color: #a6cc63;
}
.addsub>input{
    width: 100px;
    height: 40px;
    line-height: 40px;
    text-align: center;
    border: 1px solid #bfbfbf;
    transition: all .125s ease;
    outline: 0;
}
</style>