
# Actions-OpenWrt-Xiaomi-AX6

Build OpenWrt and publish docker image using GitHub Actions.

感谢[coolsnowwolf](https://github.com/coolsnowwolf/lede)的仓库

感谢[P3TERX](https://github.com/P3TERX/Actions-OpenWrt)的云编译项目

更改红米AX6的默认密码为无密码!或者password 

更改红米AX6的默认IP為：192.168.1.1 

增加状态栏信息,增加看板娘!

## How to Use

You need to add 5(at least the first one) secrets to make Actions work properly.

1. **RELEASES_TOKEN**, which should be your Github **Personal Access Token** with at least the *public_repo* checked.
2. **DOCKER_USERNAME**(Optional, if you don't need an aarch64 docker img) is your dockerhub username.
3. **DOCKER_PASSWORD**(Optional, if you don't need an aarch64 docker img) , which is actually not the password for your dockerhub account but the **Access Token** generated from dockerhub Account Settings.
4. **Telegram notify secrets**(Optional, but remember to comment out relational action in ymls) , **TELEGRAM_TOKEN** for your bot token and **TELEGRAM_TO** for your personal id. [click here for more information](https://github.com/marketplace/actions/telegram-notify)

[P3TERX大佬写的中文教程|Usage Guide in Chinese](https://p3terx.com/archives/build-openwrt-with-github-actions.html)


## 1.Fork

~~右上角，Fork本项目到你的仓库~~ 好像现在fork的 Actions 都不能用了。

所以用模板新建到自己的项目

点击页面中的 Use this template （使用这个模版）按钮。

填写仓库名称，然后点击Create repository from template（从模版创建储存库）按钮。
[参见教程](https://p3terx.com/archives/build-openwrt-with-github-actions.html#toc_5)

## 2.Actions

同意工作流，然后开整。

![](https://gitee.com/Unkaer/blog/raw/master/images/material/20210307205947.webp)

等到 ssh连接 界面
![](https://gitee.com/Unkaer/blog/raw/master/images/material/20210307210916.webp)

单击 `url` 进行访问;
![](https://gitee.com/Unkaer/blog/raw/master/images/material/20210307210937.webp)

黑屏 按 `Ctrl`+`C`变为命令行模式 ;
输入 `cd openwrt/ && make menuconfig` 进入菜单

```
cd openwrt/ && make menuconfig
```

![](https://gitee.com/Unkaer/blog/raw/master/images/material/20210307211012.webp)
![](https://gitee.com/Unkaer/blog/raw/master/images/material/20210307211148.webp)

### 2.1设置插件
插件对照参考 [OpenWrt 编译 LuCI -> Applications 添加插件应用说明-L大](https://www.right.com.cn/forum/thread-3682029-1-1.html)
`Y` 确定选中 `N`取消选中

#### 2.1.1 机型选择
前三个是设置机型，默认已经选好了 小米R4A千兆版
![机型](https://user-images.githubusercontent.com/45261780/128300236-881f51d1-6475-4621-83f4-61775e01030e.png)

#### 2.1.2 主题选择
在 `LuCI` --> `Themes` 中进行设置
![LuCI](https://user-images.githubusercontent.com/45261780/128300627-a3af1f69-2c2f-49fa-86ce-8da6b3a0d0d4.png)

#### 2.1.3 插件选择
在 `LCTY` --> `Applications` 中进行设置
![Applications](https://user-images.githubusercontent.com/45261780/128300725-26799ad1-1bbb-4035-8ff0-aeaba1635dd3.png)

#### 2.1.4 保存设置
方向键移动选中 `Save` 回车确认
![1](https://user-images.githubusercontent.com/45261780/128300983-93ee554e-e72d-4082-8550-265ff087971e.png)
保存为 默认的文件名
![2](https://user-images.githubusercontent.com/45261780/128301040-705307f5-2b0b-42d0-b52c-5608807ebcd5.png)

或者 连按两下 `ESC` 返回至退出菜单界面，
会弹出确认是否保存菜单，确认即可
![3](https://user-images.githubusercontent.com/45261780/128301176-8f163e5e-84f3-4700-ba38-7732f4fe16f4.png)


### 2.2下载本次修改的配置文件（可选）
下次升级就可以直接用，不必再 ssh 选择插件了

```
rm -f .config.old && make defconfig && ./scripts/diffconfig.sh > seed.config && cat seed.config
```

*自己复制保存到合适的位置
*在手动修改成项目的 .config 文件

### 2.3退出 ssh
在命令行界面 `ctrl`+`D`  退出 ssh
![批注 2021-08-05 115225](https://user-images.githubusercontent.com/45261780/128301252-f054fa0a-6544-4770-8e99-217946f9b692.png)
![批注 2021-08-05 115238](https://user-images.githubusercontent.com/45261780/128301319-5b6969b1-94e5-43f7-97c7-6f69acbd92ec.png)

## 2.4 下载固件
一般两个小时左右编译完成
![](https://gitee.com/Unkaer/blog/raw/master/images/material/20210307211649.webp)

## 2.5 刷入体验
第一次要断电，按住`reset`键，再插入电源，等待5秒，浏览器访问 192.168.1.1 ，就进入 breed界面，进行升级
之后的更新升级，都可以在 `系统`->`备份/升级`里面刷入新的固件
