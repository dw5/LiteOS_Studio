<!-- markdownlint-disable MD033 MD040 MD041 MD024-->
<p align="center">
  <h1 align="center">Hi3861V100 WiFi IoT工程示例</h1>
</p>

介绍如何使用`HUAWEI LiteOS Studio` 开发WiFi IoT工程。

### 搭建Windows开发环境

`WiFi IoT SDK`使用`Scons`进行构建管理， 需要安装`Python`和`Scons`库， 推荐`Python 3.7`以上版本。安装步骤如下：

#### 安装Python3.7

从<a href="https://www.python.org/downloads/release/python-376/" target="_blank">`https://www.python.org/downloads/release/python-376/`</a>下载， 并按安装向导完成安装`Python3.7.6`。

安装`Python`时， 勾选 `Add Python x.x to PATH` 选项， 将`Python`的安装根目录， 以及安装根目录下的`Scripts`目录， 加入环境变量。

注意： 如果电脑首次安装`python`，建议重启电脑后再进行后续操作，确保`python`环境生效。

#### 安装Scons等三方库

建议使用Pypi镜像提升安装Python三方库的速度，可以使用华为云开源镜像，设置如下：

对于Windows用户，在`C:\Users\<UserName>\pip`目录下添加`pip.ini`文件，如果不存在`pip`目录，需要自己创建。

然后编辑其内容如下:

```
[global]
index-url = https://repo.huaweicloud.com/repository/pypi/simple
trusted-host = repo.huaweicloud.com
timeout = 120
```

然后打开命令行窗口， 执行如下命令安装Python三方库：

```
pip install pycryptodome
pip install ecdsa
pip install pywin32
pip install scons
```

#### 安装riscv32-unknown-elf编译器

如果用户需要执行编译功能， 则应根据情况安装`riscv32-unknown-elf`编译器。可联系`HUAWEI LiteOS Studio`技术支持人员获取编译器。

#### 获取WiFi IoT SDK

请可以联系我们获取 `WiFi IoT SDK`， 解压放到本地工作目录。

#### 安装JLink软件

如果`WiFi IoT`开发板支持使用`JLink`仿真器进行`GDB`调测， 开发者对`WiFi IoT`工程进行调测前， 需要确保本机已安装`JLink`软件。如果没有安装， 可从<a href="https://www.segger.com/downloads/jlink/" target="_blank">`https://www.segger.com/downloads/jlink/`</a>下载，并按安装向导完成最新版`JLink`的安装。

建议将`JLink.exe`所在目录加入`PATH`环境变量。

### 使用入门

演示如何新建工程， 编译、烧录、串口调试等功能。

#### 新建工程（可选）

**注意：** 当本地已有工程/源码时，无需再新建工程，直接进入下一步`打开工程`。

通过点击`新建工程`图标![avatar](images/newFolder.png)，打开新建工程界面。在使用`HUAWEI LiteOS Studio`新建`WiFi IoT`工程时，需要联网，确保可以访问[润和 HiHope社区](https://gitee.com/hihopeorg)。如果联网需要代理，请提前配置好代理，否则新建工程会失败。配置代理方法参考[常见问题](/studio_qa?id=新建工程失败问题)。同时，需要确保本地已安装`git for windows`工具。

**步骤 1** 在`工程名称`中填入自定义的工程名

**步骤 2** 在`工程目录`中填入或选择工程存储路径

**步骤 3**  选择SDK版本号，当前WiFi IoT工程被维护在`https://gitee.com/hihopeorg`，版本号为`HiHope WiFi-IoT Hi3861SPC021`

**步骤 4**  在`SDK目录`中填入或选择本地原始SDK路径

**步骤 5**  `工程参考`中可以填入本地路径，也可以填入远程gitee地址，填入远程地址时，需要填入标签或分支的完整地址，例如`https://gitee.com/hihopeorg/HiSpark-WiFi-IoT-DevKit/tree/HiSpark_WiFi-IoT_VER_A_Hi3861_Dev_Kit_SPC021_V1.0.1`（DevKit案例）或`https://gitee.com/hihopeorg/HiSpark-WiFi-IoT-OC/tree/HiSpark_WiFi-IoT_VER_A_Hi3861_OC_Kit_SPC021_V1.0.1`（OC案例）

**步骤 6**  在开发板信息表点选开发板所在行，目前默认提供`Hi3861V100`开发板

点击`确认`按钮，后台下载并保存所选目标板的SDK，等待下载完成后会自动重新打开一个新窗口并自动打开带有工程参考的用户新建工程。

![avatar](images/create3861-2.png)

#### 打开工程

这里演示如何打开存在的工程：

**步骤 1** 打开`HUAWEI LiteOS Studio`

**步骤 2**  点击`打开工程`图标![avatar](images/openFolder.png)， 选择`WiFi IoT` 工程所在的目录

对打开的工程， 可以在工程配置里， 根据实际情况， 选择开发板， 调整编译配置、烧录配置、调试器配置、组件配置、串口配置等。

#### 目标板配置-选择目标板

**步骤 1**  点击工具栏上的工程设置图标![avatar](images/proSetting.png)， 打开工程配置界面。

**步骤 2**  点击`目标板`， 选取`Hi3861V100`， 点击确认按钮![avatar](images/confirm.png)进行保存

![avatar](images/targetBoardNew.png)

#### 组件配置-组件使能与属性修改

**步骤 1**   点击工具栏上的工程设置图标![avatar](images/proSetting.png)， 打开工程配置界面

**步骤 2**   点击`组件配置`， 在组件属性栏勾选需要使能的组件， 或更改组件属性值， 点击确认按钮![avatar](images/confirm.png)进行保存

![avatar](images/componentConfig.png)

#### 编译配置-编译代码

**步骤 1**  点击工程配置界面上的`编译器`

![avatar](images/compiler.png)

**步骤 2**  `编译器类型`选择`riscv32-unknown-elf`

**步骤 3**  `编译器目录`已提供默认路径， 用户可以将`riscv32-unknown-elf`编译器安装到该路径下，也可以自行指定路径安装后，点击图标![avatar](images/browserFoler.png)填入`riscv32-unknown-elf-gcc.exe`所在路径

**步骤 4**  `SConstruct脚本`可以点击图标![avatar](images/browserFoler.png) 或在脚本文件上`单击右键->设置为SConstruct文件`进行自定义设置， 也可使用![avatar](images/findScript.png)按钮自动搜索脚本文件

**步骤 5**   配置好后点击确认按钮![avatar](images/confirm.png)进行保存

**步骤 6**   点击工具栏上的编译图标 ![avatar](images/compile.png) 进行编译代码， 也可以点击清理图标 ![avatar](images/clean.png) 和重新构建图标 ![avatar](images/recompile.png) 进行清理和重新编译

编译成功的截图示例如下：

![avatar](images/compile_succ.png)

清理编译输出的截图示例如下：

![avatar](images/clean_succ.png)

注意： 如果编译报错`Error 309`， 参考[常见问题](/studio_qa?id=scons编译报error-309)解决。

#### 烧录配置-HiBurner串口烧录

`WiFi IoT`开发板支持`HiBurner`串口烧录， 支持`JLink`的部分开发板也已经支持[JLINK烧录](/project_wifiiot?id=烧录配置-J-LINK烧录)。

**步骤 1**   点击工程配置界面上的`烧录器`

![avatar](images/burner.png)

**步骤 2**   `烧录方式`选择`HiBurner`

**步骤 3**   `烧录器目录`已提供默认路径， 也可以点击图标![avatar](images/browserFoler.png)进行自定义设置

**步骤 4**   点击`烧录文件`后的图标![avatar](images/browserFoler.png)选择编译生成的`BIN`文件或者使用如下图所示方式选择烧录文件

 ![avatar](images/setBurner.png)

 **<font color='red'>注意：对于HiBurner串口烧录， 支持的烧录文件为`Hi3861_demo_burn.bin`和`Hi3861_demo_allinone.bin`。</font><bont>**

**步骤 5**   `传输模式`只支持串口烧录， 使用默认的`Serial`即可

**步骤 6**   配置好后点击![avatar](images/confirm.png)进行保存

**步骤 7**   点击工程配置界面上的`串口配置`

![avatar](images/serialConfig.png)

**步骤 8**   根据实际情况进行`端口`设置

![avatar](images/serialPorts.png)

**步骤 9**   设置`波特率`为`921600`， `数据位`、`停止位`、`奇偶`、`流控`保持默认即可

**步骤 10**   配置好后点击![avatar](images/confirm.png)进行保存

**步骤 11**   点击工具栏上的图标![avatar](images/burn.png)进行烧录

弹出烧录进度框， 提示用户复位`RESET`开发板：

![avatar](images/resetBoard2.png)

烧录成功的截图如下， 点击关闭按钮， 关闭烧录弹窗。

![avatar](images/burn-succ2.png)

**步骤 12**   烧录成功后， 点击`串口终端`图标![avatar](images/serialTerminal.png)打开串口终端界面， 设置`端口`， 开启`串口开关`， 开发板按下复位`RESET`按钮， 可以看到串口输出， 烧录成功

![avatar](images/serial-termial-data.png)

#### 烧录配置-J-LINK烧录

在使用`J-Link`烧录之前， 请确认已经支持该烧录方式， 如果不支持， 请使用[串口烧录方式](/project_wifiiot?id=烧录配置-HiBurner串口烧录)。

**步骤 1**   点击工程配置界面上的`烧录器`

![avatar](images/burner-jlink.png)

**步骤 2**   `烧录方式`选择`JLink`

**步骤 3**   `烧录器目录`已提供默认路径， 也可以点击图标![avatar](images/browserFoler.png)进行自定义设置

**步骤 4**   点击`烧录文件`后的图标 ![avatar](images/browserFoler.png) 浏览选择编译生成的BIN文件， 也可以选中要烧录的文件，右键->设置为烧录文件，如下图所示

 ![avatar](images/setBurner.png)

 **<font color='red'>注意：对于J-LINK烧录， 支持的烧录文件只有`Hi3861_demo_burn.bin`， 不用使用`Hi3861_demo_allinone.bin`。</font><bont>**

在编译过程中会自动识别出编译输出件`bin、hex、fwpkg`， 在`烧录文件`下拉选择框， 可以选择烧录文件：

 ![avatar](images/setBurner_dropdown.png)

**步骤 5**   `连接方式`、`连接速率`、`加载地址`使用默认值

`连接方式`当前只支持`JTAG`， `连接速率`使用默认值`2000KHz`， 否则烧录会失败。对于`WiFi IoT`开发板， `加载地址`为`0x400000`。

**步骤 6**   配置好后点击![avatar](images/confirm.png)进行保存

**步骤 7**   点击工具栏上的图标![avatar](images/burn.png)进行烧录

在`终端`窗口输出烧录进度， 烧录成功的截图如下：

![avatar](images/burn-succ3.png)

#### 调试器-执行调试

`HUAWEI LiteOS Studio` 调测配置非常简单， 只需要几步， 即可支持`WiFi-IoT` 图形化单步调试。由于`WiFi IoT`的`ROM`、封库特性， 有些源码无法单步调测，

对于没有对应源代码的文件， 使用反汇编文件进行展示。

**步骤 1**   点击工程配置界面上的`调试器`

![avatar](images/hi3861/debugger.png)

**步骤 2**   `调试器`选择`JLink`

**步骤 3**   `连接方式`选择`JTAG`， 注意: 对于`WiFi IoT` 开发板的连接方式一定要选择`JTAG`， `连接速率`可以默认或者自行指定

**步骤 4**   `调试器目录`选择`JLink`的安装目录

**步骤 5**   `GDB目录`可以默认， 或者自行指定

**步骤 6**   `可执行文件路径`选择输出目录下的`.out`文件， 可在编译后从下拉菜单点选， 或者自行指定

**步骤 7**   `调试配置`根据需要， 选择`复位调试`或`附加调试`

***`复位调试`*** 会自动重启开发板， 并停止在main函数

***`附加调试`*** 不重启开发板， 附加到当前运行代码行

配置好后点击确认按钮![avatar](images/confirm.png)进行保存

**步骤 8**   在`HUAWEI LiteOS Studio`左侧的活动栏点击`运行`视图， 可以看到默认已经配置好调试配置`Jlink Debug`， 点击绿色三角按钮， 开始调试

![avatar](images/hi3861/debuggerView.png)

**步骤 9**   调试界面如下：

![avatar](images/hi3861/debuggingView.png)

***变量**     展示局部变量、全局变量、静态变量

***监视**     监视指定的表达式

***调用堆栈** 展示当前的调用堆栈

***断点**     展示设置的断点

***寄存器**     查看各个寄存器的数值， 支持复制数值操作

***反汇编 & 内存**     支持对函数进行反汇编， 支持查看内存操作。

***输出**     展示`GDB`客户端的输出日志

***调试控制台**     展示`GDB Server`的输出日志

#### 调试器-断点 监视点

在代码行号处单击可以添加断点， 或者右键点击， 支持`条件断点`、`记录点`等

![avatar](images/hi3861/breakpoints.png)

选中代码文件中的变量或表达式， 右键上下文菜单， 可以添加监视点：

![avatar](images/hi3861/watchpoint.png)

#### 调试器-寄存器

在`调试面板-寄存器`视图， 可查看开发板寄存器的数值。右键可复制寄存器值。

![avatar](images/hi3861/registers.png)

#### 调试器-多线程调测

LiteOS作为轻量级物联网操作系统， 同时只能运行一个Task任务线程。在调试时， 只能展示当前运行状态的任务线程的调用堆栈。通过多线程感知调测技术， 在调测时， 可以展示`Running运行`状态和`Pending暂停`状态的任务线程的调用堆栈， 提供更加强大的调试能力。

![avatar](images/hi3861/threadawareness.png)

点击调用堆栈中的栈帧可以跳转到对应的源文件。当在不同任务的栈帧中切换时， `变量`视图会同步更新展示。

#### 调试器-反汇编

在单步调测时， 调测面板`反汇编&内存`中， 支持查看对应源代码的反汇编代码， 支持如下两种方式：

![avatar](images/hi3861/dissasm_0.png)

**反汇编指定函数**  通过输入函数名称， 展示指定函数的反汇编代码。

![avatar](images/hi3861/dissasm_1.png)

**反汇编当前函数**   自动展示当前任务栈函数的反汇编代码。

反汇编文件展示效果如下：

![avatar](images/hi3861/dissasm_2.png)

#### 调试器-查看内存

调测面板`反汇编&内存`中， 点击`查看内存`， 通过指定内存起始地址及长度， 可以展示开发板的内存信息。

在弹窗中输入内存起始地址， 要展示内存的长度：

![avatar](images/hi3861/memoryAddress.png)

![avatar](images/hi3861/memoryLength.png)

查看内存展示效果如下：

![avatar](images/hi3861/viewmemory.png)

### 炫彩灯工程案例

演示如何创建/打开工程， 编译、烧录、效果演示等功能。

#### 硬件开发板准备

WIFI-IoT开发板安装与介绍：

- 将Hi3861主板插到底板上

**Hi3861V100主板:**

![avatar](images/hi3861/color_light/mainboard.png)

**通用底板:**

![avatar](images/hi3861/color_light/bottomboard.png)

**炫彩灯板:**

炫彩灯主要包括三部分：炫彩三色灯部分， 由红绿蓝三种颜色组成， 通过PWM来驱动， 可以通过调节RGB的比例来呈现出不同的颜色， 通过调节占空比来调节灯的亮度；人体红外传感器部分， 通过红外探头发出的红外信号来检测外部环境的人体活动情况；光敏电阻， 主要用于检测外部环境的光照情况。

![avatar](images/hi3861/color_light/light.png)

**主板、I2C屏和炫彩灯屏组合:**

![avatar](images/hi3861/color_light/together.png)

#### 创建/打开工程

打开`HUAWEI LiteOS Studio`，点击打开工程按钮![avatar](images/openFolder.png)选择已下载的WIFI-IOT  SDK包的目录:

SDK路径示例如下（注意：下面截图路径为参考路径， 实际应以用户自己实际路径为标准）：

![avatar](images/hi3861/color_light/sdkPath.png)

**SDK文件结构：**

- app：
存放demo示例文件
- boot:
包含 commonboot/flashboot/loadboot，包含3861的drivers/startup等
- build:
编译配置
- components:
Hi3861组件， 如wifi/histreaming/at/hilink/mcast6等
- config:
系统配置
- documents:
Hi3861的开发指南等
- include:
Hi3861包含的头文件
- output:
编译后输出的编译文件bin
- platform:
包含Hi3861的外设驱动， 如i2c/spi/uart；cpu的内核core
- third_party:
第三方应用， 如mqtt/cjson/coap等
- tool:
配置工具， 如python脚本/xml文件等

#### 工程配置

工程配置中需要设置`WiFi IoT`开发板， 参考[目标板选择](/project_wifiiot?id=工程配置-目标板选择)。

#### 组件配置

**步骤 1**   点击工程配置界面上的`组件配置`:

![avatar](images/hi3861/color_light/comp_colorlight.png)

**步骤 2**   选择`App Demo`->选择`COLORFUL_LIGHT`， 点击 进行保存。点击 按钮更新组件目录， 将会加载在线组件目录。这样就选择了炫彩灯的demo，下面再进行其他的配置。

#### 编译配置及编译代码

在工程配置中， 如何设置编译选项， 如何执行编译， 参考[编译代码](/project_wifiiot?id=编译配置-编译代码)。

#### 烧录配置及开发板烧录

`WiFi IoT`开发板支持HiBurner串口烧录， 支持JLINK的部分开发板也已经支持JLINK烧录。

在工程配置中， 如何设置烧录选项， 如何执行烧录， 分别参考[Hiburner串口烧录](/project_wifiiot?id=烧录配置-hiburner串口烧录)和[J-Link烧录](/project_wifiiot?id=烧录配置-j-link烧录)。

#### 案例效果演示

炫彩灯Demo一共有7种模式：

**（1）Control Mode:**初始模式主要是三色灯的控制， 每按一下右键S1， 在红、绿、蓝三个状态之间切换， 如初始状态是红灯亮，按下右键S1就会让绿灯亮， 再按一下让蓝灯亮， 再按又是红灯亮， 如此循环。

![avatar](images/hi3861/color_light/controlmode.png)

这里解释一下OLED屏上面显示的其中四行文字分别代表的含义：

- 第一行：WiFi-AP ON U:1 wifi状态ON表示WiFi的AP状态开启，OFF表示WiFi的AP状态关闭，U表示有几台设备与主板建立连接。WiFi-Client ON/OFF C/D:显示是否接入路由器， C/D:Connect/Disconnect。

- 第二行：Colorful Light：表示的是现在演示的是哪一个demo。

- 第四行：Control Mode：表示现在是在哪个模式下(模式控制)。

- 第六行：Blue on：表示现在是哪种状态(让蓝灯亮)。

**（2）Colorful Light:** 在上节的状态下， 按一下左键S2， 就从Control mode跳到了Colorful Light：每按一次右键S1， 三色灯会按照不同时间间隔进行循环亮灭。

- 1.period by 1s：红、绿、蓝三色灯每隔1秒轮流亮一次。

- 2.period by 0.5s：红、绿、蓝三色灯每隔0.5秒轮流亮一次。

- 3.period by 0.25s：红、绿、蓝三色灯每隔0.25秒轮流亮一次。

![avatar](images/hi3861/color_light/colorfullight.png)

**（3）PWM Control:**在上一节状态下， 再按下左键S2， 就从Colorful Light跳到了PWM Control， 每按一下右键S1， 会实现不同的调光类型。

- 1.Red：红色由暗到最亮

- 2.Green：绿灯由暗到最亮

- 3.Blue：蓝灯由暗到最亮

- 4.Purple：紫灯由暗到最亮

- 5.All：白灯由暗到全亮

![avatar](images/hi3861/color_light/pwmcontrol.png)

**（4）Brightness：**再次按下左键S2， 会从PWM Control跳到Brightness， 你每按下右键S1， 三色灯   的亮度就会发生变化， 从较暗、中等亮度、最亮三种状态间循环变化。

- 1.low：较暗亮度

- 2.middle：中等亮度

- 3.high：最亮状态

![avatar](images/hi3861/color_light/Brightness.png)

**（5）Human Detect:**再次按下左键S2， 会从Brightness模式调到Human detect， 该模式通过红外探头发出的红外信号来检测外部环境的人体活动情况。当有人经过， 白灯会亮起， 当人离开， 白灯会熄灭。可以通过人的靠近和远离来进行测试。

![avatar](images/hi3861/color_light/humandetect.png)

**（6）Light Detect:** 再次按下左键S2， 会从Human detect跳到Light Detect， 光敏电阻主要用于检测外部环境的光照情况， 如果检测到有光源， 灯熄灭， 当检测到无光源，灯亮起， 可用手遮住光敏电阻或 拿开来进行测试。

![avatar](images/hi3861/color_light/lightdetect.png)

**（7）Union Detect:** 当再次按下左键S2时， 就会从Light Detect跳到Union detect， 主要是将人体红外传感器和光敏电阻结合起来， 控制白灯的亮灭， 当在无光源环境下且有人经过时， 灯会亮起， 其他情况下等都是熄灭状态。可把光敏电阻遮住， 通过人的走近和远离来测试现象.

![avatar](images/hi3861/color_light/uniondetect.png)

**（8）Return Menu:** 当再次按下左键S2， Colorful light的所有模式都已经展示完毕了， 此时会弹出如下图这种情况， 此时你按左键S2就执行continue， 继续演示Colorful light的各种模式。

![avatar](images/hi3861/color_light/returnmenu.png)

### 交通灯工程案例

#### 工程创建

和上一个炫彩灯demo一样打开`HUAWEI LiteOS Studio`进行工程创建和配置， 先安装WIFI-IOT开发板及交通灯demo所需的板子——交通灯单板， 将交通灯板安插在底板的最右侧。

**交通灯：** 此模块主要包括三部分：<font color=red> 炫彩三色灯部分， 由红绿蓝三种颜色组成</font>， 通过PWM来驱动， 可以通过调节RGB的比例来呈现出不同的颜色， 通过调节占空比来调节灯的亮度；人体红外传感器部分， 通过红外探头发出的红外信号来检测外部环境的人体活动情况；光敏电阻， 主要用于检测外部环境的光照情况。此模块和炫彩灯一样有防呆的箭头和标号。

<img src="images/hi3861/trafficLight/smartTrafficLight.png" height = "400" alt="智能交通灯" />

<img src="images/hi3861/trafficLight/foolProofArrow.png" height = "400" alt="防呆箭头和标号" />

#### 组件配置

在`HUAWEI LiteOS Studio`上的配置中除了组件配置要重新配置下外， 其他的配置和炫彩灯demo一致。交通灯demo的组件配置如下：按照截图中1/2/3步骤进行配置即可。

<img src="images/hi3861/trafficLight/componentSetting.png" height = "400" alt="组件配置" />

#### 烧录后启动的效果

实际效果：<font color=red>交通灯demo一共有3种模式</font>

**（1）** <font color=red>Control Mode: </font>进入Traffic Light demo， 初始状态就是Control Mode， 是通过右边按键S1来控制红、黄、绿灯的亮灭状态。但是绿灯亮时， 蜂鸣器会长周期响， 当红灯或绿灯亮时会短周期响。

<img src="images/hi3861/trafficLight/controlMode.png" height = "350" alt="Control Mode" />

**（2）** <font color=red>Auto Mode: </font> 当按下左键S2时， 会从control mode跳到Auto mode， 交通灯模式， 模仿交通灯， 红灯常亮5秒， 然后闪烁3秒， 后黄灯闪烁3秒， 后绿灯常亮5秒， 再是绿灯闪烁3秒， 如此循环。绿灯亮时蜂鸣器长周期响， 红灯或黄灯亮时短周期响。最后一行的R，Y，G后面的数字代表倒数的时间， 动态显示， 时间的单位是秒， R代表红灯， Y代表黄灯， G代表绿灯， B代表的是蜂鸣器， ON代表蜂鸣器打开状态， OFF代表蜂鸣器关闭状态。交通灯的倒数时间我们也可以在代码中自己设置。

<img src="images/hi3861/trafficLight/autoMode.png" height = "350" alt="Auto Mode" />

**（3）**<font color=red>Human Mode: </font>当再次按下左键S2时， 会从Auto mode跳到Human Mode模式， 就是<font color=red>在Auto mode的基础上增加了人为控制， 且红灯常亮改为30秒</font>。模仿交通灯， 红灯常亮30秒后闪烁3秒， 黄灯闪烁3秒， 然后绿灯常亮5秒， 绿灯闪烁3秒， 如此循环。</font>一旦有人按下右键S1， 红灯立即快闪3秒， 进入绿灯常亮5秒</font>， 再绿灯闪烁3秒， 再进入红灯30秒常亮模式， 后进入正常循环。绿灯亮时蜂鸣器长周期响， 红灯或黄灯亮时短周期响。此时如果再按一下左键S2就会跳到Return Menu界面， 选择按下Continue继续demo循环。

<img src="images/hi3861/trafficLight/humanMode.png" height = "350" alt="Human Mode" />

<img src="images/hi3861/trafficLight/returnMenu.png" height = "350" alt="Return Menu" />

### 环境监测工程示例

#### 工程创建

和上一个炫彩灯demo一样打开`HUAWEI LiteOS Studio`进行工程创建和配置， 先安装WIFI-IOT开发板及环境监测demo所需的板子——环境监测单板， 将环境监测单板安插在底板的最右侧。此模块主要包括三部分：温湿度传感器部分， 主要用于检测外部环境的温湿度数据；烟雾传感器部分， 主要用于检测外部环境的液化气、苯、酒精、烟雾等气体的浓度， 蜂鸣器部分， 我们可以设定这两种传感器采集数据的阈值， 当数据超过阈值蜂鸣器发出警报。

<img src="images/hi3861/environmentMonitor/environmentMonitor.png" height = "400" alt="环境监测" />

<img src="images/hi3861/environmentMonitor/foolProofArrow.png" height = "400" alt="防呆箭头和标号" />

#### 组件配置

环境监测demo组件配置如下：1/2/3，其他的配置参考炫彩灯demo。

<img src="images/hi3861/environmentMonitor/componentSetting.png" height = "400" alt="组件配置" />

#### 烧录后启动的效果

实际效果：<font color=red>环境监测demo一共有4种模式</font>

**（1）**<font color=red>Environment Monitoring</font>:当进入环境监测demo， 初始状态是Environment Monitoring， 主要用来实时显示外部环境的温湿度以及可燃气体的浓度。OLED显示屏的最后一行文字的含义：

T：Temperature温度， H：Humidity湿度， CG：Combustible Gas 可燃气体

当温度超过25度， 蜂鸣器长周期响， 超过30度， 短周期响，这里的阈值我们也可以在代码中自己设置。

<img src="images/hi3861/environmentMonitor/environmentValueDisplay.png" height = "350" alt="温度、湿度和可燃气体值显示" />

**（2）**<font color=red>Temperature Mode</font>: 当再次按下左键S2时， 会从Environment Monitoring模式跳到Temperature Mode模式， 此模式下的OLED屏上只会显示实时的温度， 通过温度传感器来实时监测外界环境的温度数据。

<img src="images/hi3861/environmentMonitor/temperatureDisplay.png" height = "350" alt="温度值显示" />

**（3）**<font color=red>Humidity Mode</font>: 当再次按下左键S2时， 会从Temperature Mode模式跳转到Humidity mode模式， 此模式下的OLED屏上只会显示实时的湿度， 通过湿度传感器来实时监测外界环境的湿度数据。

<img src="images/hi3861/environmentMonitor/humidityDisplay.png" height = "350" alt="湿度值显示" />

**（4）**<font color=red>Combustible Gas Mode</font>: 当再次按下左键S2时， 会从Humidity mode模式跳转到Combustible Gas Mode模式， 此模式下的OLED屏上只会显示实时可燃气体浓度数据， 通过可燃气体传感器来实时监测外界环境的可燃气体浓度数据。此时如果再按一下左键S2就会跳到   Return Menu界面， 选择Exit就可以跳转到主菜单选择界面。

<img src="images/hi3861/environmentMonitor/c_GasDisplay.png" height = "350" alt="可燃气体值显示" />

<img src="images/hi3861/environmentMonitor/returnMenu.png" height = "350" alt="Return Menu" />

### NFC工程案例

演示如何创建/打开工程，编译、烧录、效果演示等功能。

#### 工程创建

和炫彩灯demo一样，打开`HUAWEI LiteOS Studio`进行工程创建和配置

#### 硬件开发板准备

安装`WiFi IoT`开发板及NFC demo所需的板子——NFC单板

**NFC单板:**

![avatar](images/hi3861/NFC/NFCboard.png)

NFC demo内置了可以唤起5个应用程序：分别是微信/今日头条/淘宝/华为智慧生活/和histreaming。通过按钮进行切换即可。

#### 组件配置

![avatar](images/hi3861/NFC/comp_NFC.png)

其他配置参考炫彩灯demo进行配置即可。

#### 烧录后启动的效果

NFC demo一共拉起5个APP，按键切换拉起不同应用。

**（1）Wechat:** NFC demo初始状态是WeChat ， 也就是用安卓手机碰一下NFC板， 就会调起手机的微信APP。

![avatar](images/hi3861/NFC/app_wechat.png)

**（2）Today Headline:** 再按下左键S2，会从WeChat mode跳到 Today Headline mode， 用安卓手机碰一下NFC板， 就会调起手机的今日头条APP。

![avatar](images/hi3861/NFC/app_todayheadline.png)

**（3）Taobao:** 再按下左键S2，会从Today Headline mode跳到 Taobao mode， 用安卓手机碰一下NFC板， 就会调起手机的淘宝APP。

![avatar](images/hi3861/NFC/app_taobao.png)

**（4）Huawei_SM_life：** 再按下左键S2，会从Taobao mode跳到 Huawei SM_Life mode， 用安卓手机碰一下NFC板， 就会调起手机的华为智慧生活APP。

![avatar](images/hi3861/NFC/app_huaweismlife.png)

**（5）Histreaming:** 再按下左键S2，会从Huawei SM_Life mode跳到 Histreaming mode， 用安卓手机碰一下NFC板， 就会调起手机的Histreaming APP。

Histreaming 是我们自己开发的一款手机APP， 主要是与我们的主板通过WiFi建立通信， 如果把主板安装在智能小车上面， 可以通过Histreaming来控制小车的运动， 比如前进后退， 左右移动， 红外循迹， 智能避障等功能， 后续会集合芯片开发更多的功能， 敬请期待。

![avatar](images/hi3861/NFC/app_histreaming.png)

### All Demo 工程示例

演示如何创建/打开工程， 编译、烧录、效果演示等功能。

#### 工程创建

和炫彩灯demo一样，打开`HUAWEI LiteOS Studio`进行工程创建和配置

#### 硬件开发板准备

准备好单板

组件配置：按照步骤1/2/3进行配置即可。

![avatar](images/hi3861/all_demo/comp_alldemo.png)

#### 烧录后启动的效果

上电时先显示“Hello Hi3861”表示主板`Hi3861`启动成功

![avatar](images/hi3861/all_demo/startpage.png)

然后进入如下界面：

![avatar](images/hi3861/all_demo/demopage.png)

此时我们就可以通过按键S1和S2来对OLED屏板进行控制了。

屏幕上面的4行文字分别对应了：

1.炫彩灯demo    2.红绿灯demo   3.环境监测demo   4.NFC碰一碰demo。

最后一行Select:后面的数字对应了我们选择的demo序号， 通过左边按键S2来选择， Enter是确认按键， 由右边按键S1来控制；比如：现在要演示第2个demo， 先按左键S2， 让select:后面数字显示为2， 再按右键S1， Enter确认， 进入第2个demo的演示界面。

![avatar](images/hi3861/all_demo/demointro.png)

### 案例使用技术指引

#### 案例中信号量的使用

在NFC demo中使用了两种方式进行示例， 分别是中断和查询。

其中中断方式的区别在于：在中断过程中使用了信号量， 由于i2c通信中使用了信号量操作， 不能在中断中直接调用接口， 故而使用二值信号量区同步中断， 示例如下：

**使用信号量：**

 ![avatar](images/hi3861/all_demo/sem.png)

**同步信号量：**

![avatar](images/hi3861/all_demo/sem_wait.png)

#### 互斥量的使用

在i2c通信中， i2c总线上可以挂载的设备数量取决于i2c总线的寻址范围和硬件结构， 驱动能力等理论上7位寻址的i2c总线可以挂载127个设备， 除去0号设备作为群呼地址外。但在实际应用过程中可能会遇到挂载的两个设备出现地址相同的情况或者两个i2c设备需要分时调用的情况， 可以采用互斥量分时调用的方式进行处理。

**创建互斥量：**

 ![avatar](images/hi3861/all_demo/muxCreate.png)

**互斥量获取使用后释放：**

![avatar](images/hi3861/all_demo/muxPost.png)

#### Histreaming APP控制设备侧

**组件配置：**

打开LiteOS的`组件配置`，依次选择`Link Settings`->`Histreaming support`->`确认`，如下图所示：

![avatar](images/hi3861/histreaming_select.png)

重新编译，烧录,重启后，串口打印如下：

![avatar](images/hi3861/histreaming_serial.png)

这时打开手机WiFi查看Hi3861发出的热点，点击连接即可。

![avatar](images/hi3861/histreaming_wlan.png)

然后打开histreaming APP，出现这个界面时，往下滑动刷新

![avatar](images/hi3861/histreaming_device.png)

直到出现如下界面，点击`局域网`

![avatar](images/hi3861/histreaming_lan.png)

显示界面如下，其中Colorful_Light/Traffic_Light/Environment/NFC这四个界面是HiSpark的Demo

![avatar](images/hi3861/histreaming_demos.png)

选择`Colorful_light`，可以操作`Colorful_light`(炫彩灯Demo)下的任意一个module,如果要退出，选择操作`Traffic_light`（交通灯Demo），必须先退出该模式，点击`Return_Menu_Module`，才能选择其他Demo，每一个Demo界面下都有一个`Return_Menu_Module`。不能跨Demo执行。

注意：点击`Return_Menu_Module`是告诉设备侧，已经退出当前Demo模式，可以进入其他模式了，在没有退出当前Demo模式之前，不能跨Demo模式执行。

![avatar](images/hi3861/histreaming_modules.png)

#### Ocean Connect连接华为云属性上报

**注册华为云账号：**

打开华为云网址，点击注册后登陆。登陆后，在搜索框中输入`IOTDA`，在弹出选项中选择`设备接入IOTDA`。

![avatar](images/hi3861/iotda.png)

创建产品（产品名称可自定义）：

![avatar](images/hi3861/createProduct.png)

创建属性（注意属性必须和设备侧上报的一致）：

![avatar](images/hi3861/createProperty.png)

设备侧操作：

在组件配置中选择`Ocean Connect support`->`确认`，然后重新编译、烧录。

![avatar](images/hi3861/ocean_config.png)

复位重启，设置热点SSID和密码，在代码中可自行更改。

重启后，扫描SSID，等待连接热点串口打印如下：

![avatar](images/hi3861/ocean_serial.png)

连接热点成功：

![avatar](images/hi3861/ocean_connectSucc.png)

设备侧属性上报：ocean_report

![avatar](images/hi3861/ocean_report.png)

打开华为云网页，即可看到设备已在线：

![avatar](images/hi3861/ocean_device_online.png)

点击进入，即可看到上报属性：

![avatar](images/hi3861/ocean_report_property.png)

通过云端控制设备侧，并上报属性，APP的相关操作如下：

设置设备的产品ID、密码、项目ID、IOTDA地址、应用鉴权等

![avatar](images/hi3861/ocean_app.png)

点击`最佳实践`：

![avatar](images/hi3861/ocean_bestSample.png)

点击`查询设备`：

![avatar](images/hi3861/ocean_search.png)

点击`设备控制`，即可控制设备：

![avatar](images/hi3861/ocean_control.png)


