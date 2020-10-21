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

如果基于开源LiteOS SDK新建工程，需要访问<a href="https://gitee.com/LiteOS/" target="_blank">`https://gitee.com/LiteOS/`</a>。新建工程失败，失败主要有以下两种情况：

- **代理配置问题：**	
 
   需要配置代理未配置，或者代理配置不正确，下载进入超时，提示用户检查网络环境与代理配置，报错如下图：

  ![avatar](images/proxyError.png)

  代理配置界面如下图：

  ![avatar](images/proxySetting.png)

  通过`点击设置按钮->设置->在输入框中输入proxy->填写Http:Proxy`设置LiteOS Studio使用的代理，例如`http://username:password@yourserver:8080`（用户名、密码中如果包含特殊字符，需要进行转义）。

  尽量使用中国国内代理区域，能够保证一定的下载速度。

- **网络环境问题：** 

  当网络环境出现问题，例如网络连接断开时，下载将会进入超时，并提示用户检查网络环境。

### 编译失败问题

LiteOS工程在windows下能够编译，且已经按照用户指南完成HUAWEI LiteOS Studio的各项设置后，如果编译依旧失败，可能为如下几个问题：

- **磁盘映射问题：**

  Linux下编译正常，通过`HUAWEI LiteOS Studio`编译报错`can't stat build : permission denied; can't create directory 'build' : File exists`，通常由于服务器上代码映射到本地使用导致，可能原因是build目录下文件正在被使用，无法删除等，如果短时间无法解决，可将代码拷贝到本地解决。

- **编译路径问题：**

  通常不建议用户将工程保存到带有中文、特殊字符的文件夹下，`HUAWEI LiteOS Studio`暂时不对保存地址进行检查与限制，如果编译路径包含中文、空格等导致编译失败，可手动将工程保存到常规合法路径下。

### 烧录失败问题

- **系统版本问题：**

  使用openOCD烧录时，烧录报错`"."不是内部或外部命令，也不是可运行的程序，或批处理文件`，可能由于使用`WINDOWS7`操作系统，系统下没有`powershell`工具导致，可修改默认终端设置，如下图：

  ![avatar](images/setTerminal_1.png)

  ![avatar](images/setTerminal_2.png)

  将默认终端设为`cmd`，即可烧录成功。
