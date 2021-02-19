<template>
  <div class="home">
    <!-- <img alt="Vue logo" src="../assets/logo.png" /> -->
    <section class="component">
      <h2>按钮</h2>
      <ul>
        <li>3种尺寸：small、normal（默认）和 large</li>
        <li>4种颜色：normal、primary、danger 和 border。border 背景色有透明度会受父级元素背景色影响。</li>
        <li>2种风格：直角和圆角，通过 round 布尔值设定，默认为 true 圆角</li>
        <li>3中状态：正常、激活（hover）和禁用（disabled）</li>
      </ul>
      <div class="block">
        <z-button size='small'>default small</z-button>
        <z-button size='small' type='primary'>primary small</z-button>
        <z-button size='small' type='danger'>danger small</z-button>
        <z-button size='small' type='border'>border small</z-button>
      </div>
      <div class="block">
        <z-button>default normal</z-button>
        <z-button type='primary' @click="handleClick">primary normal 可点击</z-button>
        <z-button type='danger'>danger normal</z-button>
        <z-button type='border'>border normal</z-button>
      </div>
      <div class="block">
        <z-button disabled>default normal disabled</z-button>
        <z-button disabled type='primary'>primary normal disabled</z-button>
        <z-button disabled type='danger'>danger normal disabled</z-button>
        <z-button disabled type='border'>border normal disabled 这个颜色看不清</z-button>
      </div>
      <div class="block">
        <z-button size='large' :round="false">default large 直角</z-button>
        <z-button size='large' type='primary' :round="false">primary large 直角</z-button>
        <z-button size='large' type='danger' :round="false">danger large 直角</z-button>
        <z-button size='large' type='border' :round="false">border large 直角</z-button>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: "Home",
  methods: {
    handleClick () {
      console.log('click')
      alert('按钮点击回调')
    }
  }
};
</script>

<style lang="scss" scoped>
.component {
  padding: 10px 20px;
  color: #fff;
  text-align: left;
  background-color: #3D465E;

  .block {
    .z-button + .z-button {
      margin-left: 10px;
    }
  }
  .block + .block {
    margin-top: 10px;
  }
}
</style>