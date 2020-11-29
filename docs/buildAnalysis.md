<p align="center">
  <h1 align="center">镜像分析工具</h1>
</p>

LiteOS Studio对构建出的elf文件进行内存占用分析，支持LiteOS开发者快速评估内存段、符号表使用情况。


### 1、镜像分析页面入口
> 打开Liteos Studio工具，点击调测工具里的镜像分析tab页签，设置编译器、可执行文件路径等，然后点击确定进入镜像分析页面。

![avatar](images/buildAnalysis/buildAnalysisStart.png)

> 或者通过打开命令行输入`build`找到`Build Analyzer`点击进入。

![avatar](images/buildAnalysis/buildAnalysisStart2.png)

### 2、镜像分析相关配置
镜像分析依赖工程的elf文件、map文件、编译器类型、编译器路径，需在调测工具设置界面进行相关设置。镜像分析结果展示界面可修改elf文件路径，配置好elf文件路径后，可点击右边的按钮重新执行镜像分析。

![avatar](images/buildAnalysis/buildAnalysisConfig.png)

### 3、镜像分析页面介绍
如果在调测工具中点击镜像分析时没有选择Map文件或者镜像分析依赖的Map文件中内存区域的数据为空时，进入镜像分析页面只有一个详细信息页签，否则有内存区域和详细信息两个页签。

![avatar](images/buildAnalysis/buildAnalysisPage2.png)
![avatar](images/buildAnalysis/buildAnalysisPage1.png)

#### 内存区域
内存区域包括每个内存区域数据的一个表格，包含了起始地址和结束地址以及内存占用。
表格下面默认显示内存占比最高的前三个区域内容。
点击不同的行会在下面仪表盘中显示点击行的数据。

![avatar](images/buildAnalysis/buildAnalysisPage3.png)
![avatar](images/buildAnalysis/buildAnalysisPage4.png)

#### 详细信息
详细信息里显示了Section和Symbol的信息。通过树表格展示层级关系，名称，VMA和LMA。双击Symbol子节点会跳转到具体的代码行号。

页面也支持搜索Name定位到具体的行，然后通过键盘Enter键跳转到下一个符合搜索条件的行。

![avatar](images/buildAnalysis/buildAnalysisPage5.png)


同时，点击表头的每列会对该列数据进行排序。

![avatar](images/buildAnalysis/buildAnalysisPage6.png)