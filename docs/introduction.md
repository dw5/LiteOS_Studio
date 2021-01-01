<p align="center">
  <h1 align="center">HUAWEI LiteOS Studio界面介绍</h1>
</p>

### 主界面介绍
`HUAWEI LiteOS Studio`工程界面构成如下：

**区域1：**	菜单栏。

**区域2：**	侧边栏。

**区域3：**	工程树，由项目工程文件构成，可进行快速新建及打开文件等操作。

**区域4：**	调试工具栏，可进行编译、烧录、调试等操作。

**区域5：**	代码编辑区。

**区域6：**	控制台输出界面。

![avatar](images/workspace.png)

### 工具栏介绍

工具栏界面如下：

![avatar](images/toolbarview.png)

**新建文件**	单击新建文件图标![avatar](images/newFile.png) (`Ctrl+N`)，新建一个空文件。

**打开工程**	单击打开工程图标![avatar](images/openFolder.png) (`Ctrl+K Ctrl+O`)，打开本地已有的工程。

**新建工程**	单击新建工程图标![avatar](images/newFolder.png)，进入新建工程向导界面，可远程下载一个LiteOS工程的SDK。

**撤销/恢复**	单击撤销/恢复图标![avatar](images/newCancel.png) ![avatar](images/newRedo.png) (`Ctrl+Z/Ctrl+Y`)，实现撤销/恢复上一步操作。

**前进/后退**	单击前进/后退图标![avatar](images/newGoahead.png) ![avatar](images/newBack.png) (`Alt+LeftArrow/Alt+RightArrow`)，跳转到浏览历史中上一个/下一个页面。
 
**编译**	单击编译图标![avatar](images/compile.png) (`F7`)，对当前打开工程进行编译。

**清理编译**	单击清理编译![avatar](images/clean.png) (`F6`)，删除上一次编译生成的文件。

**重新编译**	单击重新编译![avatar](images/recompile.png) (`Alt+F7`)，删除上一次编译生成的文件，再次执行编译。

**停止编译**	单击停止编译![avatar](images/stop-compile.png) (`Ctrl+Shift+F7`)，停止正在进行的编译。

**烧录**	单击烧录![avatar](images/burn.png) (`F8`)，将程序烧录至目标板。

**重启目标板**	单击![avatar](images/restart.png) (`Ctrl+Shift+F9`)，重启开发板。

**开始调试**	单击![avatar](images/debug.png) (`F5`)， 启动调试。 

**串口终端**	单击![avatar](images/serialTerminal.png)， 打开串口终端界面。

**调测工具**	单击![avatar](images/debugTools.png)， 打开调测工具界面。

**工程配置**	单击![avatar](images/proSetting.png) (`F4`)，打开工程配置界面。


### 串口终端界面介绍
通过单击![avatar](images/serialTerminal.png)打开串口终端界面。

 ![avatar](images/serial-termial.png)
 
串口终端界面从上到下分为4块区域：

**1号区域：**	串口的设置和开关。

***端口：***	在下拉框中选择与目标板连接的实际串口号

***波特率：***	115200（默认），请根据实际情况修改

***校验位：***	None（默认），请根据实际情况修改

***数据位：***	8（默认），请根据实际情况修改

***停止位：***	1（默认），请根据实际情况修改

***流控：***	None（默认），请根据实际情况修改

***串口开关：***	默认为关闭，使用时需要手动打开串口开关

**2号区域：**	串口数据接收区，左边显示字符串，右边显示16进制，暂未设定接收数据量限制。

**3号区域：**	串口数据发送区，通过右上角的下拉菜单来切换数据内容由字符串显示还是16进制显示，通过“发送”按钮将数据发送给连接的目标板。

**4号区域：**	展示接收和发送数据的计数，并可以将计数清零。

以`WiFi IoT`开发板为例，下图是接收数据的展示：

 ![avatar](images/serial-termial-data.png)


### 新建工程界面介绍
通过单击新建工程图标![avatar](images/newFolder.png)打开新建工程界面。 新建工程使用`git`进行SDK下载，需要预置`git for windows`工具，可访问[git for windows官网](https://gitforwindows.org/)自行下载`git`工具。

 ![avatar](images/newProject.png)

 **工程名称：**	在输入框中填写自定义的工程名称，作为`SDK`工程的根目录文件夹名。

 **工程目录：**	在输入框中填写`SDK`工程的本地存储路径，建议路径名中不要包含中文、空格、特殊字符等。

 **SDK版本：**	在下拉框中选择`LiteOS`的不同版本，从而在开发板信息表中显示不同版本支持的开发板。

 **开发板信息表：**	页面下半区域的表格面板，能够展示所选版本支持的开发板信息，包括开发厂商、开发板名称、对应设备名称与内核名称。

 <font color='red'>**注意：** 
 新建工程时需要保证网络畅通。如果联网需要代理，请提前配置好代理，否则新建工程会失败。配置代理方法参考[常见问题](/studio_qa?id=新建工程失败问题)。</font>

### 工程配置界面介绍
通过工具栏中的![avatar](images/proSetting.png)按钮打开工程配置界面。

#### 目标板配置界面介绍 
点击工程配置页面左侧的`目标板`选项进入目标板配置界面，选择目标板信息面板上的一行，点击确认按钮保存设置，即指定了当前工程的开发板，后台将根据开发板设置默认的编译、烧录等配置信息。

  ![avatar](images/targetBoardNew.png)

通过添加厂商、内核名称两个筛选条件，也可以展示筛选后支持的开发板信息。

目标板配置界面支持用户自行添加目标板信息，点击信息面板上的`+`号，即可增添一行空行，其中`厂商`、`目标板名称`、`设备名称`、`内核名称`四栏必须填写，填写完成后，单击回车，鼠标选中刚添加的一行，点击确认保存，即可使用新增的目标板信息进行后续配置。对于自行添加的信息行，鼠标移至行上时，`操作`栏将出现`-`号，点击即可删除该行，同时，在自行添加的行上双击，即可重新对该行进行编辑。

 ![avatar](images/addBoard.png)

 <font color='red'>**注意：** 
 新增目标板需要在编译、烧录、调试等方面满足`HUAWEI LiteOS Studio`所支持的工具与架构，当前版本`HUAWEI LiteOS Studio`仅支持`arm/riscv32`的编译方式，`JLink/Hiburn`的烧录方式和`JLink`的调试方式。同时，对应的工程源码也应完成在windows上的适配，如所使用的工具、架构或编译、烧录、调试等流程所使用的命令与预置的几款开发板有明显差异，则不支持自行添加开发板。</font>


#### 组件配置界面介绍
点击工程配置页面左侧的`组件配置`选项进入组件配置界面，首次启动仅展示本地已有的组件。点击左侧组件列表，在右侧组件属性栏通过勾选为组件使能，或输入具体的参数值，点击确认按钮保存后，`HUAWEI LiteOS Studio`将在后台打开组件对应的宏开关，将使能的组件与更新后的属性值加入编译。用户可以使用`CTRL` + `F`键调出组件搜索框，填入关键字进行搜索，若匹配成功，右侧组件属性区域将显示搜索结果，用户能够点击向上、向下箭头切换搜索结果，搜索框提供了区分大小写、全字匹配、使用正则表达式三种模式。

  ![avatar](images/componentConfig.png)


#### 编译器界面介绍
点击工程配置页面左侧的`编译器`选项进入编译器界面。

**编译器类型：** `编译器类型`下拉菜单目前支持`arm-none-eabi`、`riscv32-unknown-elf`两种编译器，分别适用于ARM架构和RISC-V架构，默认已经配好，如无额外需求不需要用户配置。

**编译器目录：** `编译器目录`是用户所使用的编译器所在目录，`HUAWEI LiteOS Studio`不提供编译器预置，需要用户自行安装。

* `arm-none-eabi`可参考[安装arm-none-eabi软件](/install?id=安装arm-none-eabi软件)，通过本站安装程序下载，如通过此方法下载，`编译器目录`可保持默认路径不变。如使用本地的编译器，`编译器目录`填写`arm-none-eabi-gcc.exe`所在路径。
* `riscv32-unknown-elf`编译器可联系`HUAWEI LiteOS Studio`技术支持人员获取，`编译器目录`填写`riscv32-unknown-elf-gcc.exe`所在路径。

**Make构建器：** `Make构建器`配置项仅在开发板支持`Makefile`脚本与`arm-none-eabi`编译方式时出现，`HUAWEI LiteOS Studio`不提供构建器预置，需要用户自行安装。可参考[安装Make构建软件](/install?id=安装Make构建软件)，通过本站安装程序下载，如通过此方法下载，`Make构建器`目录可保持默认路径不变。如使用本地的`Make构建器`，`Make构建器`路径填写`make.exe`所在路径。

**Makefile/SConstruct脚本：** `Makefile脚本`和`SConstruct脚本`是按照目标板的编译架构不同，所显示的编译脚本路径配置项，目前`HUAWEI LiteOS Studio`支持`Makefile`和`Scons`两种编译脚本，支持自动配置与手动配置。编译脚本路径建议不要包含中文、空格、特殊字符，避免编译失败。

* 手动配置脚本有两种方式可以配置：
  - 方式一：点击文件夹图标![avatar](images/browserFoler.png)浏览目录自行配置。
  - 方式二：在`Makefile`或`SConstruct`文件上按照`单击右键->设置为MakeFile/SConstruct文件`步骤完成设置，设置完成后会自动在编译脚本路径配置框中填入脚本路径，如下图所示：

    ![avatar](images/compilerConfig.png)

* 自动配置脚本：点击自动搜索脚本按钮![avatar](images/findScript.png)自动匹配当前开发板对应的`Makefile/SConstruct脚本`，如果自动搜索结果为空，或使用该搜索结果导致编译报错，可能由于工程脚本名称、路径等发生改变，可改为手动配置方式设置脚本路径。

**Make/SCons参数：** `参数`是用户执行编译时可以自行添加的参数，例如 -j 32等，需要用户自行配置。

填写完成后，点击确认按钮保存用户配置，此时可以通过单击编译图标![avatar](images/compile.png)，对当前工程进行编译。


#### 烧录器界面介绍
点击工程配置页面左侧的`烧录器`选项进入烧录器界面。

**烧录方式：** `烧录方式`下拉菜单目前支持`JLink`、`HiBurner`、`OpenOCD`三种烧录器，以及`Simulator`仿真器。默认已经配好，如无额外需求不需要用户配置。

**烧录器目录：** `烧录器目录`是用户所使用的烧录器所在目录。
- HiBurner烧录器目录：`HUAWEI LiteOS Studio`仅预置`HiBurner`烧录器，默认安装在`C：//users/用户名/.huawei-liteos-studio/tools`下，不需要用户自行配置此目录。
- JLink烧录器目录：`JLink`需要用户自行下载安装，推荐下载地址：
<a href="https://www.segger.com/downloads/jlink/" target="_blank">`https://www.segger.com/downloads/jlink/`</a>，下载后需要将`JLink.exe`所在目录加入系统的Path环境变量。烧录器目录填写`JLink.exe`所在路径。
- OpenOCD烧录器目录：`OpenOCD`需要用户自行下载安装，推荐下载地址：
<a href="https://sourceforge.net/projects/openocd/files/openocd/0.10.0-rc2/" target="_blank">`https://sourceforge.net/projects/openocd/files/openocd/0.10.0-rc2/`</a>，烧录器目录填写`openocd.exe`所在路径。
- Simulator仿真器目录：`Simulator`为`Qemu`仿真工具，需要用户自行下载安装，推荐下载地址：<a href="https://qemu.weilnetz.de/" target="_blank">`https://qemu.weilnetz.de/`</a>，烧录器目录填写`qemu-system-arm.exe`所在路径

**烧录文件：** `烧录文件`是用户编译生成的文件，目前支持`bin`、`fwpkg`、`hex`三种格式。执行编译后，后台将保存生成的烧录文件（`bin`、`fwpkg`、`hex`后缀的文件），并填入`烧录文件`下拉菜单中供用户点选，用户也可以在`bin`、`fwpkg`或`hex`文件上`单击右键->设置为烧录文件`或点击文件夹图标![avatar](images/browserFoler.png)浏览目录自行配置。

![avatar](images/burnerConfig.png)

其他配置项`连接方式`、`连接速率`、`加载地址`、`传输模式`等，可根据开发板及用户需求自行配置。

填写完成后，点击确认按钮保存用户配置，此时可以通过单击烧录图标![avatar](images/burn.png)，对当前工程进行烧录。


#### 调试器界面介绍
点击工程配置页面左侧的`调试器`选项进入调试器界面。

调试器界面包括`调试器`、`端口`、`连接方式`、`连接速率`、`调试器目录`、`GDB目录`、`调试配置`等，默认已为用户配好，用户如有额外需求，可自行配置。

**可执行文件路径：** 执行编译后，后台将保存生成的调试可执行文件（`elf`、`out`后缀的文件）路径，并填入`可执行文件路径`下拉菜单中供用户点选，用户也能通过手动输入或点击文件夹图标![avatar](images/browserFoler.png)浏览目录自行配置。

**调试配置：** `调试配置`中可选择复位调试和附加调试两种调试方式。
  
![avatar](images/debuggerConfig.png)

**磁盘映射：** 调试器下方可勾选是否通过磁盘映射方式进行调试，勾选后，填写`原工程路径`和`映射磁盘路径`。在确保映射磁盘访问无误情况下，能够进行远程工程调试。
  - 原工程路径：填写工程在linux上的路径。
  - 映射磁盘路径：填写本地映射磁盘上的工程路径。
![avatar](images/debuggerDiskMap.png)


#### 串口配置界面介绍
点击工程配置页面左侧的`串口配置`选项进入串口配置界面。

串口配置界面包括`端口`、`端口状态`、`波特率`、`数据位`、`停止位`、`奇偶`、`流控`等，大多选项默认已为用户配好，用户如有额外需求，可自行配置。

**端口：** `端口`表示开发板使用的端口号，一般使用Hiburn烧录的开发板在烧录前需要用户手动配置，通过系统的设备管理器界面来判断当前使用的端口号。

![avatar](images/port.png)

**端口状态：** `端口状态`能够实时显示端口是否被占用。

![avatar](images/serialConfig.png)

### AI模型代码生成向导界面介绍
按如下方式进入AI模型代码生成向导界面。

![avatar](images/generateAIModel.png)

`HUAWEI LiteOS Studio`集成了AI模型代码生成功能，通过<a href="https://gitee.com/LiteOS/LiteOS_Studio/repository/archive/master.zip" target="_blank">msmicro工具（点击下载）</a>，将压缩包中的`LiteOS_Studio/tools/mindspore_micro/msmicro.rar`解压到本地。

AI模型生成的原理是将`MindSpore`训练的模型或第三方模型转换为`ms`模型，并将`ms`模型解析为算子，生成`.c`文件或指令集优化的汇编代码。然后通过交叉编译器，编译支持不同平台的可执行文件到`IoT`设备部署推理

`tensorflow_lite`模型文件训练与生成方式可参考`tensorflow官方社区`文档操作。

`tensorflow_lite`应用实例网址链接如下：
<a href="https://www.tensorflow.org/lite/examples?hl=zh-cn" target="_blank">tensorflow_lite应用实例</a>

相关使用api网址链接如下：
<a href="https://www.tensorflow.org/lite/api_docs?hl=zh-cn" target="_blank">相关api网址</a>

#### AI模型代码生成参数配置介绍 
AI模型代码生成向导界面可配置的参数包括`Msmicro目录`、`框架类型`、`AI模型文件`、`量化类型`、`配置文件`，需要用户自行配置。

***Msmicro目录：*** 用户自行下载并解压`msmicro`工具后，填入`msmicro.exe`所在目录

***框架类型：*** 包括`TF`、`CAFFE`、`ONNX`、`MS`、`TFLITE`五种，当前开源工程仅适配了`TFLITE`。

***AI模型文件：*** AI模型文件由用户自行获取或自主生成，填入模型文件所在路径。

***量化类型：*** 包括`AwareTraining`、`PostTraining`、`WeightQuant`三种，当前开源工程仅适配了`PostTraining`，当使用`Mnist.tflite`，并需要进行训练后量化时，选择`PostTraining`。

***配置文件：*** 配置项输入框仅在`量化类型`选择了`PostTraining`时出现，需要填入相应的配置文件，当使用`Mnist.tflite`并选择了`PostTraining`量化类型时，需要填入`config.mnist`所在路径，注意，`config.mnist`中需要填入本地校准集的绝对路径。

配置完成后，点击确定，即可开始代码生成，并自动将生成的文件放入相应的编译路径下。

#### AI模型生成示例

开源工程选取开源第三方平台自训练的模型`Mnist.tflite`、`Resnet.tflite`和`Mobilenet.tflite`完成了适配与功能验证，当前三个模型均可以导出成`fp32`推理代码，目前仅`Mnist.tflite`支持量化，而且仅支持训练后量化（`PostTraining`）。

**步骤 1** 将`msmicro.exe`路径填入`Msmicro目录`（仅首次需要填写，填写后将保存为默认地址）

**步骤 2** `框架类型`选择`TFLITE`

**步骤 3** `AI模型文件`选择`Mnist.tflite`/`Resnet.tflite`/`Mobilenet.tflite`

**步骤 4** `量化类型`根据需求选择，使用`Mnist.tflite`并量化时，需要选择`PostTraining`，如果无量化需求，将下拉菜单置空

**步骤 5** `配置文件`将在量化类型选择了`PostTraining`后出现，填入`config.mnist`所在路径

**步骤 6** 点击确定，开始生成代码。当前开源代码下适配了`Mnist`、`Mnist_quant(量化)`、`Resnet`、`Mobilenet`这四种生成代码。

如果`量化类型`、`训练模型`等不满足以上情况，或在`Mnist.tflite`量化时未在`config.mnist`中填入校准集本地绝对路径，可能会导致生成失败。此时可能会提示：`生成AI文件失败`。

当前开源工程在`demos/ai`文件夹下已预置了部分工程文件，包括编译工程及示例所需要的输入测试数据头文件，如下图所示，红框内为预置头文件：

![avatar](images/ai_origin.png)

如使用的工程较旧，可能未进行文件预置与功能适配。代码生成后将无法复制到源码下指定文件夹中，此时弹出提示：`复制AI文件失败，请检查LiteOS工程下是否存在模板文件夹`。

代码生成结束并复制完成后，将弹出提示：`生成AI文件成功`。代码将被生成到`demos/ai`目录下，生成后的工程目录结构如下，红框内为新生成的文件：

![avatar](images/ai_result.png)