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