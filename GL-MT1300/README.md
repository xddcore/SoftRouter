# GL-MT1300
## 环境:GL.iNET官方环境 openwrt 19.07.7
首先对文件夹功能做如下说明:

1. argon: openwrt的一个主题插件，比较美观。(ps：不过在GL-MT1300上安装后，访问openwrt后台时会有卡顿感。大家按需安装)
2. libcap:里面有openclash运行的必须文件，而这两个文件(libcap|libcap-bin)刚好openwrt里面又没有，需要手动安装。(我这里提供的是2.48版本的，如果你需要其他版本的，请保证两个文件版本相同，否则无法运行openclash)
3. putty用于远程ssh运行script文件夹里面的openclash安装脚本
4. openclash安装脚本
5. winscp将script文件夹下openclash安装脚本上传至路由器中

## 其他注意事项
>GL-MT1300 架构mipsel_24kc(对应openclash内核版本就是:linux-mipsle-softfloat)

>openclash的Dev内核需要 在libcap-bin和libcap安装后重新装一遍(Dev内核更新相关操作在openclash的全局设置菜单里面，有个版本更新菜单 
)

>只用装Dev内核即可，主要原因路由器内置32Mb flash

>openwrt的时区需要和你的机场时区同步

>实测Redir-Host(兼容)模式运行效果更好，Fake-IP模式不太稳定

# 使用说明
### 03/09/2021
在本次更新中，重新优化了openclash安装脚本的信息。如果要将OpenClash安装到你的GL.iNET路由器上，只需使用`winscp`将脚本传入路由器，并用`putty`连接路由器SSH运行```dash install_openclash_for_official.sh```命令即可。
install_openclash_for_official.sh将会自动安装openclash所需环境，并安装libcap与libcap-bin，自动下载安装Dev内核。
最后导入一下机场的自动配置文件，启动OpenClash，And Enjoy it!

### 18/04/2022
在本次更新中，新增了外部SD Card和U盘挂载脚本。(片内16MB Flash实在是太小了，装个openclash就没了)。此脚本可以将SD卡或U盘挂载到/overlay。
# 有用的链接
> 1.OpenClash:https://github.com/vernesong/OpenClash

> 2.OpenWrt Package: https://downloads.openwrt.org/snapshots/packages/mipsel_24kc/base/

