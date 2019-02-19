幾盤【前端】工程

- 前端使用Vue全家桶，组件库采用Ant-Design-Vue

- 技术选型：
    * Vue 2.6.0,Vuex,Vue Router
    * Axios
    * vue-apexcharts
    * ant-design-vue
    * webpack,yarn

- 使用指令：  
1.根据不同用户权限动态构建路由  
2.RESTFul风格接口  
3.前后端请求参数校验  
4.支持Excel导入导出  
5.前端页面布局多样化，主题多样化  
6.自定义Vue权限指令来控制DOM元素渲染与否  

指令 | 含义| 示例
---|---|---
v-hasPermission | 当用户拥有列出的权限的时候，渲染该元素 |`<template v-hasPermission="'user:add','user:update'"><span>hello</span></template>`
v-hasAnyPermission | 当用户拥有列出的任意一项权限的时候，渲染该元素 |`<template v-hasAnyPermission="'user:add','user:update'"><span>hello</span></template>`
v-hasRole | 当用户拥有列出的角色的时候，渲染该元素 |`<template v-hasRole="'admin','register'"><span>hello</span></template>`
v-hasAnyRole | 当用户拥有列出的任意一个角色的时候，渲染该元素 |`<template v-hasAnyRole="'admin','register'"><span>hello</span></template>`

- 如何使用:  
~~~
# 安装yarn
npm install -g yarn

# 下载依赖
yarn install

# 启动
yarn start

# 编译
yarn build