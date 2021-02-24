<template>
  <div
    class="z-button"
    :class="[
      disabled && (type ? 'z-button__' + type + '--disabled' : 'z-button--disabled'),
      { 'z-button--round': round },
      size && 'z-button--' + size,
      type && 'z-button__' + type
    ]"
    @click="handleClick"
  >
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
  },
  methods: {
    handleClick() {
      if (!this.disabled) this.$emit('click')
    }
  }
}
</script>

<style lang="scss" scoped>
.z-button {
  box-sizing: border-box;
  display: inline-block;
  height: 28px;
  padding: 4px 20px;

  background: #a4b1d6;
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

  &--round {
    border-radius: 4px;
  }

  &--small {
    height: 24px;
    padding: 6px 10px;
    line-height: 12px;
  }

  &--large {
    height: 40px;
    line-height: 20px;
    padding: 10px 30px;
    font-size: 14px;
  }

  &--disabled {
    color: rgba(255, 255, 255, 0.6);
    background-color: #4a5470;
    &:hover {
      background-color: #4a5470;
    }
  }
}

.z-button__primary {
  color: #212734;
  background-color: #fbb001;

  &:hover {
    background-color: #d87e0e;
  }

  &--disabled {
    color: rgba(255, 255, 255, 0.6);
    background-color: #4a5470;
    &:hover {
      background-color: #4a5470;
    }
  }
}


.z-button__danger {
  color: #212734;
  background-color: #ff6f64;

  &:hover {
    background-color: #c85252;
  }

  &--disabled {
    color: rgba(255, 255, 255, 0.6);
    background-color: #4a5470;
    &:hover {
      background-color: #4a5470;
    }
  }
}


.z-button__border {
  color: rgba(251, 176, 1, 0.8);
  border: 1px solid #fbb001;
  background: rgba(251, 176, 1, 0.1);

  &:hover {
    background: rgba(251, 176, 1, 0.2);
  }

  &--disabled {
    border: 1px solid #4a5470;
    color: rgba(255, 255, 255, 0.3);
    background: rgba(74, 84, 112, 0.1);
    &:hover {
      background: rgba(74, 84, 112, 0.1);
    }
  }
}
</style>
