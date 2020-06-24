<p align="center">
  <h1 align="center">常见问题</h1>
</p>

## 常见问题
用户使用过程中的常见错误。

### Scons编译报Error 309
报错如下图：

![avatar](images/err309.png)

解决办法：将<a href="images/libssp-0.dll" target="_blank">libssp-0.dll</a>放入`C:\Windows\SysWOW64`。

### 新建工程失败问题

如果基于开源LiteOS SDK新建工程，需要访问<a href="https://gitee.com/LiteOS/" target="_blank">`https://gitee.com/LiteOS/`</a>。新建工程失败，失败主要有

以下两种情况：

 **代理配置问题：**	需要配置代理未配置，或者代理配置不正确，下载进入超时，提示用户检查网络环境与代理配置，报错如下图：

![avatar](images/proxyError.png)

代理配置界面如下图：

  ![avatar](images/proxySetting.png)

通过`点击设置按钮->设置->在输入框中输入proxy->填写Http:Proxy`设置LiteOS Studio使用的代理，例如`http://%username%:%password%@yourserver:8080`，

尽量使用中国国内代理区域，能够保证一定的下载速度。

**网络环境问题：** 当网络环境出现问题，例如网络连接断开时，下载将会进入超时，并提示用户检查网络环境。



