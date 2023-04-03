# Actions-OpenWrt

Build OpenWrt and publish docker image using GitHub Actions.

感谢[coolsnowwolf](https://github.com/coolsnowwolf/lede)的仓库

感谢[P3TERX](https://github.com/P3TERX/Actions-OpenWrt)的云编译项目

更改红米AX6的默认密码为无密码!

更改红米AX6的默认IP為：10.0.0.1

增加状态栏信息,增加看板娘!

## How to Use

You need to add 5(at least the first one) secrets to make Actions work properly.

1. **RELEASES_TOKEN**, which should be your Github **Personal Access Token** with at least the *public_repo* checked.
2. **DOCKER_USERNAME**(Optional, if you don't need an aarch64 docker img) is your dockerhub username.
3. **DOCKER_PASSWORD**(Optional, if you don't need an aarch64 docker img) , which is actually not the password for your dockerhub account but the **Access Token** generated from dockerhub Account Settings.
4. **Telegram notify secrets**(Optional, but remember to comment out relational action in ymls) , **TELEGRAM_TOKEN** for your bot token and **TELEGRAM_TO** for your personal id. [click here for more information](https://github.com/marketplace/actions/telegram-notify)

[P3TERX大佬写的中文教程|Usage Guide in Chinese](https://p3terx.com/archives/build-openwrt-with-github-actions.html)
