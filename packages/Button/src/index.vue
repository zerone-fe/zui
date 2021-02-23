<template>
    <div class="z-button" @click="$emit('click')"
        :class="[
            {'z-button--round': round}, 
            type && 'z-button--' + type,
            size && 'z-button--' + size,
            { 'z-button--diabled': disabled }
        ]">
        <slot></slot>
    </div>
</template>

<script>
export default {
    name: 'ZButton',
    props: {
        type: String,
        round: {
            // 是否圆角
            type: Boolean,
            default: true
        },
        size: {
            type: String
        },
        disabled: {
            type: Boolean,
            default: false
        }
    }
}
</script>

<style lang="scss" scoped>
.z-button--round {
    border-radius: 4px;
}
.z-button {
    box-sizing: border-box;
    display: inline-block;
    height: 28px;
    padding: 4px 20px;

    background: #A4B1D6;
    color: #212734;
    user-select: none;
    cursor: pointer;
    text-align: center;
    font-size: 12px;
    line-height: 20px;
    font-family: PingFangSC-Medium, PingFang SC;

    &:hover {
        background-color: #687390;
    }

    &.z-button--diabled {
        color: rgba(255, 255, 255, 0.6);
        background-color: #4A5470;
    }
}
.z-button--primary {
    color: #212734;
    background-color: #FBB001;
    &:hover {
        background-color: #D87E0E;
    }
    &.z-button--diabled {
        color: rgba(255, 255, 255, 0.6);
        background-color: #4A5470;
    }
}
.z-button--danger {
    color: #212734;
    background-color: #FF6F64;
    &:hover {
        background-color: #C85252;
    }
    &.z-button--diabled {
        color: rgba(255, 255, 255, 0.6);
        background-color: #4A5470;
    }
}
.z-button--border {
    color: rgba(251, 176, 1, 0.8);
    border: 1px solid #FBB001;
    background: rgba(251, 176, 1, 0.1);

    &:hover {
        background: rgba(251, 176, 1, 0.2);
    }
    &.z-button--diabled {
        border: 1px solid #4A5470;
        color: rgba(255, 255, 255, 0.3);
        background: rgba(74, 84, 112, 0.1);
    }
}
.z-button--small {
    height: 24px;
    padding: 6px 10px;
    line-height: 12px;
}
.z-button--large {
    height: 40px;
    line-height: 20px;
    padding: 10px 30px;
    font-size: 14px;
}
</style>