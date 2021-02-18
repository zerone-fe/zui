<template>
    <div class="z-button">
        <slot></slot>
    </div>
</template>

<script>
export default {
    name: 'z-button',
    props: {
        type: String
    }
}
</script>

<style lang="scss" scoped>
.z-button {
    display: inline-block;
    padding: 3px 6px;
    background: #000;
    color: #fff;
}
</style>