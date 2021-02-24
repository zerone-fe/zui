import ZButton from './Button'

const components = [ZButton]

// 如果使用 use 注册插件，则所有组件都将被注册
const install = function (Vue) {
  if (install.installed) return
  // 遍历注册全局组件
  components.map(component => Vue.component(component.name, component))
}

// 如果直接引入组件
if (typeof window !== 'undefined' && window.Vue) {
  install(window.Vue)
}

export default {
  // 导出的对象必须有 install 方法，才能被 Vue.use() 方法安装
  install,
  // 以下是具体的组件列表
  ZButton
}
