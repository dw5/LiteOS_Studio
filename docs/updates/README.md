version 1.45.10

有任何问题, 请随时联系我们的技术支持人员：

<a href="im:z00373366"> zhushangyuan 00373366</a> &nbsp;&nbsp; <a href="im:l00277914">linaidi 00277914</a>&nbsp;&nbsp; <a href="im:y00520256">yangguangwei 00520256</a>&nbsp;&nbsp; <a href="im:z00305011">zhoujing 00305011</a> 
  

欢迎使用我们的新版本, 在此版本中新增、完善的特性如下：

#### 版本升级

- LiteOS Studio底座升级至[VSCode-Huawei Ver 1.45.1](https://marketplace.rnd.huawei.com/vscode_huawei)

- LiteOS Studio扩展发布至[华为VSCode应用市场](https://marketplace.rnd.huawei.com/search?target=VSCode&category=All%20categories&sortBy=Popular&searchText=liteos%20studio)

- 灵活支持各种开发板工程,支持快捷极简的编译、烧录、调试、目标板等工程配置

- 基于开发者使用习惯, 增加工具栏功能, 支持新建工程, 快进、后退, 编译、烧录、调试, 重启开发板, 串口, 工程设置等

#### STM32系列开发板

- 支持`STM32系列`开发板的一键编译、烧录、调试, 对齐开源`LiteOS`已支持的开发板型号
    - 支持基于码云开源`LiteOS`, 支持选择适配的开发板,新建工程
    - 预置ARM GCC编译器、构建工具(make.exe)、调试工具（openocd、jlink、stutil等）
    - 支持GDB单步调测, 支持多线程感知, 支持基础的查看反汇编、查看内存功能

#### WiFi IoT Hi3861开发板

- 支持`WiFi IoT Hi3861`开发板的一键编译、烧录、调试, 预置`Histreaming、HiLink`组件
    - 集成最新的`WiFi IoT Hi3861`SDK TR5 版本`Hi3861V100R001C00SPC021`
    - 支持新建`WiFi IoT Hi3861`工程, 零配置, 实现一键编译、烧录、调测
    - 支持`JLink`、`HiBurn串口`两种一键式烧录
    - 支持GDB单步调测, 支持多线程感知, 支持基础的查看反汇编、查看内存功能
    - 组件化预置`HiStreaming`、`HiLink`组件, 待组件化预置示例Demo

#### DFX调测能力工具

- 提供`LiteOS`定制的调测能力 ,辅助用户定位、分析问题。当前提供的能力工具有：栈估算, LMS内存检测, 可视化Trace。

    - 栈估算, 使用模拟执行和动态标记技术来精确估算任务栈的内存使用空间, 提升内存利用效率

#### 后续计划

- `WiFi IoT Hi3861` 支持`OpenOCD + FT2232D`低成本调测方式; 润和客户Beta测试支持, 反馈与改进

- 开源`LiteOS` 版本组件化软件包管理功能实现

- 调研、集成`Hi3556V200` 开发板