#import "template.typ": *

// 设置图标, 来源: https://fontawesome.com/icons/
// 如果要修改图标颜色, 请手动修改 svg 文件中的 fill="rgb(38, 38, 125)" 属性
#let faAward = icon("fa-award.svg")
#let faBuildingColumns = icon("fa-building-columns.svg")
#let faCode = icon("fa-code.svg")
#let faEnvelope = icon("fa-envelope.svg")
#let faGithub = icon("fa-github.svg")
#let faGraduationCap = icon("fa-graduation-cap.svg")
#let faLinux = icon("fa-linux.svg")
#let faPhone = icon("fa-phone.svg")
#let faWindows = icon("fa-windows.svg")
#let faWrench = icon("fa-wrench.svg")
#let faresearch = icon("research.png")
#let idCard = icon("mentoring.png")

// 主题颜色
#let themeColor = rgb(0, 0, 0)

// 设置简历选项与头部
#show: resume.with(
  // 字体基准大小
  size: 10pt,
  // 标题颜色
  themeColor: themeColor,
  // 控制纸张的边距
  top: 1.5cm,
  bottom: 2cm,
  left: 2cm,
  right: 2cm,
  // 如果不需要头像，则将下面的参数注释或删除
  photograph: "正式照.JPEG",
  photographWidth: 10em,
  gutterWidth: 2em,
)[

= 周海鹏

#info(
  color: themeColor,
  (
    // 其实 icon 也可以直接填字符串, 如 "fa-phone.svg" 
    icon: faPhone,
    content: "(+86) 188-5189-3975"
  ),
  (
    icon: faBuildingColumns,
    content: "南京航空航天大学",
  ),
  (
    icon: faGraduationCap,
    content: "计算机科学与技术学院",
  ),
  (
    icon: faEnvelope,
    content: "516875454@qq.com",
    link: "mailto:516875454@qq.com"
  ),
  (
    icon: faGithub,
    content: "github.com/YXalix",
    link: "https://github.com/YXalix",
  ),
)

#h(2em)  // 手动顶行, 2em 代表两个字的宽度
我是周海鹏，现在是南京航空航天大学计算机学院 2022 级研究生，正深陷于学习数学、编程和英语的无边苦海中。喜欢尝试新技术，按第一性原则思考，围绕最简核心，不断迭代，不断优化。
]
#v(-1em)
#align(left, text(12pt)[
  *_专业技能_*: Rust, C/C++, Python, Unreal Engine, Flutter
])

#v(-0.8em)
== #faGraduationCap 教育背景
#v(-0.3em)
#item(
  [ *南京航空航天大学 · 本科* ],
  [ 计算机科学与技术专业 (GPA: 4/5 · Rank: 10% ) ],
  date[ 2018 年 – 2022 年 ]
)
#v(-0.6em)
#item(
  [ *南京航空航天大学 · 硕士* ],
  [ 计算机科学与技术专业 ],
  date[ 2022 年 – 至今 ]
)
#v(-0.8em)
== #faresearch 研究经历
#v(-0.3em)
#researchitem(
  [*面向物理层安全感知智能反射通信的重复联盟博弈研究*],
  date[2022 年 12 月 – 至今]
)
#v(-0.5em)
主要是物理层安全方面的博弈, 考虑存在第三方智能反射服务提供方的情况下, 研究合法用户、窃听者、智能反射面的动态联盟关系。

《A Three-Party Repeated Coalition Formation Game for PLS in Wireless Communications with IRSs》WCNC24接收
#v(-0.8em)
== #idCard 实习经历
#v(-0.4em)
#researchitem(
  [*深圳市腾讯计算机系统有限公司*],
  date[2021 年 07 月 – 2021 年 09 月]
)
#v(-0.7em)
#researchitem(
  [游戏客户端开发 IEG],
  [深圳]
)
#v(-0.5em)
在实习期间完成超新星项目(独立设计实现一款游戏，主题为深度环境交互), 实现了一个通过视角切换与技能来完成空间变换达到通关目的的游戏, 其中应用了GAN来程序化生成随机地图。核心玩法使用C++完成, 简单逻辑使用蓝图加快开发。关于GAN部分, 先在UE上建立快速生成真实地图的场景, 制作足够量的数据, 然后用pytorch编写GAN算法来获取模型, 最后C++进行模型加载
#v(-0.8em)
== #faCode 项目经历
#v(-0.4em)
#item(
  link(
    "https://github.com/LearningOS/2023a-rcore-YXalix",
    [ *基于rCore的内核开发* ]
  ),
  [ *个人项目* ],
  date[ 2023 年 10 月 – 2023 年 12 月 ]
)
#v(-0.5em)
#tech[ OS, Rust, RISC-V ]
#v(-0.5em)
阶段一: 学习rCore-Tutorial-Book-v3从零实现一个操作系统内核, 通过增加系统调用和死锁检测的方式来理解内核的运行机制, 包括任务调度, 内存分配、文件系统、死锁检测等
// - 分时多任务下的task_info系统调用、实现多地址空间下的mmap和munmap系统调用、实现多进程下的spawn系统调用和stride调度算法、实现eazy-fs文件系统下的sys_linkat、sys_unlinkat、sys_stat系统调用、实现多线程下的死锁检测

阶段二: 扩展上面实现的rCore内核, 使得其能够运行带标准库的C程序, 并添加支持 FAT32 文件系统的独立内核模块

#item(
  link(
    "https://github.com/YXalix/minicc",
    [ *minicc编译器* ]
  ),
  [ *个人项目* ],
  date[ 2023 年 12 月 – 2024 年 01 月 ]
)
#v(-0.5em)
#tech[ Rust, RISC-V  ]
#v(-0.5em)
基于 Rust 语言实现的 C 语言子集编译器，支持将 C 语言子集编译为 RISC-V 汇编语言, 实现 C 语言子集的基本功能、全局变量、多重指针、多维数组等功能, 使用Rust实现链表来存储AST, 后续用更Rust的方式重构代码, 采用enum来存储AST, 增加中间代码生成IR

#item(
  link(
    "https://github.com/YXalix/SunnyTeam",
    [ *基于Flutter的APP开发* ]
  ),
  [ *课程项目* ],
  date[ 2021 年 09 月 – 2021 年 12 月 ]
)
#v(-0.5em)
#tech[ Flutter, Dart, python+flask ]
#v(-0.5em)
尝试使用flutter进行前端开发, 实现一个跨平台的校园活动角APP, 项目难点在于当时fluter比较新并且Dart语言需要新学, 在使用该框架的时候也没有资料, 只能啃官方文档。

// == #faAward 荣誉

// #item(
//   [ *优秀学生干部* ],
//   [ ],
//   date[ 2022 年 09 月 – 2023 年 11 月 ]
// )

// #item(
//   [ *优秀学生奖学金* ],
//   [ ],
//   date[ 2018 年 11 月 – 2021 年 11 月 ]
// )

// #item(
//   [ *三好学生* ],
//   [ ],
//   date[ 2018 年 11 月 – 2021 年 11 月 ]
// )
#v(-0.8em)
== #faBuildingColumns 校园经历
#v(-0.4em)
#item(
  [ *南航校青年志愿者协会* ],
  [宣传企划部 · 高级干事],
  date[ 2018 年 10 月 – 2020 年 10 月 ]
)
#v(-0.4em)
负责微信公众平台的运营，编辑推送内容