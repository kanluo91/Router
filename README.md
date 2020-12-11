[TOC]
### Router的三种方案
路由案例

#### 1.  URL-Block
#### 2.  Target-Action
#### 3.  Protocol-Class


###  各个方案的优缺

#### 1.  URL-Block
![Router](https://github.com/kanluo91/Router/blob/main/imgs/Router.jpg)

> 优点

1. 强大的灵活性，可以通过下发不同的URL跳转不同页面。
2. 通过开放对应的协议给第三方App，使得第三方App有跳转到指定页面的能力，例如：`QQ的一键加群 。`

> 缺点

1. 需要在App启动后注册URL-Block映射关系，映射表必须一直存留在内存中，造成多余的内存开销，但瑕不掩瑜。
2. 必须知道组件对应协议才可以调用对应组件，而且无法知道被调用组件需要使用的初始化参数。所以必须要有一份使用文档来标明对应组件的URL以及初始化参数。
3. URL只能传常规参数，例如无法传递AVPlayer。（视频播放切换至不同控制器就需要用到AVPlayer），但是可以根据模块初始化需要的参数进行本地传参，例如自定义 userInfo


#### 2. Target-Action

![Target-Action](https://github.com/kanluo91/Router/blob/main/imgs/target-action.jpg)

> 优点

1. 传递参数类型无限制
2. 无需注册，调用入口统一
3. 调用者很清楚对应模块需要的初始化参数


> 缺点

1. 存在大量的 target 和 selector 的 hardcode。如果定义为常量字符串的话，其实也存在一定的内存开销
2. 调用关系固定，后期无法更改

#### 3. Protocol-Class
![Protocol-Class](https://github.com/kanluo91/Router/blob/main/imgs/protocol.jpg)

> 优点 
1. 传递参数类型无限制
2. 调用者很清楚对应模块需要的初始化参数


> 缺点

1. 需要注册 Protocol 和 class 的映射关系，存在内存开销。
2. 组件调用入口分散，无法统一管理
3. 调用关系固定，后期无法更改
