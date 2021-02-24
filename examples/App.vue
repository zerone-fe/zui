<template>
  <div id="app">
    <!-- <div id="nav">
      <router-link to="/">Home</router-link> |
      <router-link to="/about">About</router-link>
    </div> -->
    <h1>ZUI 组件库</h1>
    <router-view />
  </div>
</template>

<style lang="scss">
html,
body {
  margin: 0;
}

#app {
  // font-family: Avenir, Helvetica, Arial, sans-serif;
  font-family: Roboto, Avenir, Helvetica, Arial, sans-serif, 'PingFang SC',
    -apple-system, BlinkMacSystemFont, 'Helvetica Neue', 'Hiragino Sans GB',
    'Source Han Sans', 'Noto Sans CJK Sc', 'Microsoft YaHei',
    'Microsoft Jhenghei';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #fff;
  background-color: #06070a;
}

#nav {
  padding: 30px;

  a {
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}

h1 {
  margin: 0;
}
</style>
