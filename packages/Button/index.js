import ZButton from './src'

// 为组件提供 install 安装方法，供按需引入
ZButton.install = function (Vue) {
  Vue.component(ZButton.name, ZButton)
}

export default ZButton
