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
#let fawechat = icon("wechat.png")
#let fainfo = icon("info.png")
#let fahome = icon("home.svg")

// 主题颜色
#let themeColor = rgb(0, 0, 0)

// 设置简历选项与头部
#show: resume.with(
  // 字体基准大小
  size: 10.5pt,
  // 标题颜色
  themeColor: themeColor,
  // 控制纸张的边距
  top: 0.4cm,
  bottom: 2cm,
  left: 1cm,
  right: 1cm,
  // 如果不需要头像，则将下面的参数注释或删除
  photograph: "正式照.JPEG",
  photographWidth: 10em,
  gutterWidth: 3.5em,
)[
#align(left + bottom, text(20pt)[
  *周海鹏*
])
#person(
  color: themeColor,
  infoitem(
    icon: faGraduationCap,
    content: "预备党员",
  ),
  infoitem(
    icon: fahome,
    content: "浙江 · 杭州",
  ),
  infoitem(
    icon: faBuildingColumns,
    content: "南京航空航天大学",
  ),
  infoitem(
    icon: faPhone,
    content: "18851893975"
  ),

  infoitem(
    icon: faEnvelope,
    content: "516875454@qq.com",
  ),
  infoitem(
    icon: faGithub,
    content: "github.com/YXalix",
  ),
)
]


// #align(left, text(12pt)[
//   *_技术栈_*: 
  
//   Linux, 

//   Rust, C/C++, Python, 
  
//   UE4/5, Flutter, Git
// ])

== #faGraduationCap 教育背景

#education(
  date[ *2022.09-2025.04* ],
  [ *南京航空航天大学  |  计算机科学与技术专业  |  硕士* ],
  [
    #set align(left)
    本校保研至原专业, 主要研究方向为动态联盟博弈, 考虑在无线传输的物理层安全场景下, 引入第三方智能反射服务提供方后, 研究合法用户、窃听者、第三方智能反射面之间的动态联盟关系。目前已有一篇CCF-C论文, 一篇TWC期刊在投;
  ]
)

#education(
  date[ *2018.09-2022.06* ],
  [ *南京航空航天大学  |  计算机科学与技术专业  |  本科* ],
  [
    #set align(left)
    主修平均绩点4/5, 保研排名前10%, 具有良好的计算机基础知识; 有基于Futter的全栈开发经验;
  ]
)

== #faWrench 专业技能
- 熟悉Rust开发, 熟悉所有权, trait机制等;
- 熟悉C++11, Python开发, 熟练使用STL, 了解C++11特性;
- 熟悉操作系统的基本原理, 包括进程管理, 内存管理, 内核锁, 文件系统, IPC机制等;
- 熟悉UXIX/Linux环境, 熟悉常用命令, 了解strace等工具的使用;
- 了解Git, Cmake, Makefile, GDB等常用工具的使用;

== #idCard 实习经历

#internship(
  date[*2024.06-至今*],
  [* 华为 | 2012欧拉庞加莱实验室 | 操作系统开发 *],
  [
    实习期间在欧拉内存虚拟化部门, 完成EulerOS kenerl memory alloc/free tracer modules编写, 以及对应ARM下的AT脚本编写;实现内存NUMA的pre-offline特性支持; 技术栈 C, Python;
  ]
)

#v(-0.1em)

#internship(
  date[*2021.07-2021.09*],
  [* 腾讯 | IEG魔方工作室 | 游戏客户端开发 *],
  [
    实习期间独立设计实现一款以深度环境交互为题的PC端游戏, 游戏机制为3D场景2D化, 通过横版移动以及视角切换抵达目的地. 游戏采用UE4开发, 并应用了GAN来程序化生成随机地图, 共制作约500张场景数据训练, 完成UE4的torch模型加载;技术栈 UE4 C++, Python;
  ]
)

== #faCode 项目经历
#item(
  date[ *2024.01-2024.06* ],
  [],
  [ *CICV | 内核开发* ],
  [
    项目实习期间, 作为队长带领团队完成了基于Starry的FastDDS移植工作, 我主要负责FastDDS交叉编译至RISC-V架构, Starry网络模块BUG定位与解决, Starry在ARM架构下的FastDDS移植(不同架构下页表不同导致的BUG), 累计贡献4个相关PR;

    个人实习期间, 负责重新设计实现Starry的Futex功能模块, 并形成了一个相对独立的内核模块;
]
)

#item(
  date[ *2023.12-2024.01* ],
  [],
  [ *minicc编译器开发* ],
  [
    基于 Rust 语言实现的 C 语言子集编译器，支持将 C 语言子集编译为 RISC-V 汇编语言, 实现 C 语言子集的基本功能, 先使用Rust实现链表来存储AST, 后续重构代码采用enum来存储AST, 增加中间代码生成IR;
  ]
)

#item(
  date[ *2023.10-2023.12* ],
  [],
  [ * 清华大学 Open-Source OS Training Comp 2023* ],
  [
    针对开源操作系统rCore, 通过增加系统调用以及死锁检测的方式来理解内核的实际运行, 包括任务调度, 内存分配等; 并为rCoreOS增加虚拟文件系统层, 添加支持 FAT32 文件系统的独立内核模块. 获得优秀 (前1%);
  ]
)

// #item(
//   date[ *2021.09 - 2021.12* ],
//   [ *基于Flutter的APP开发* ],
//   [ *课程项目* ],
// )

// #tech[ Flutter, Dart, python+flask ]

// 使用flutter进行前端开发, 实现一个跨平台的校园活动角APP, 项目难点在于当时fluter比较新并且Dart语言需要新学, 在使用该框架的时候也没有资料, 只能啃官方文档。

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

// == #faresearch 研究经历

// #researchitem(
//   [*面向物理层安全感知智能反射通信的重复联盟博弈研究*],
//   date[2022 年 12 月 - 至今]
// )

// 主要是物理层安全方面的博弈, 考虑存在第三方智能反射服务提供方的情况下, 研究合法用户、窃听者、智能反射面的动态联盟关系。

// 《A Three-Party Repeated Coalition Formation Game for PLS in Wireless Communications with IRSs》WCNC24接收

== #faresearch 个人总结
热爱技术, 自主学习能力强, 喜欢钻研底层原理

// #v(-4em)