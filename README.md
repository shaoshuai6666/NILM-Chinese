# NILM-中文
完成我的毕业论文，顺便记录一下NILM(非侵入式负荷监测)的学习过程，帮助其他研究NILM的中国学生轻松上手

这三十天我会陆续更新，直到完成我的毕业论文

如果你同样对NILM感兴趣，欢迎加我QQ 1400237799，互相学习互相进步。

**如果你觉得这个仓库对你有一点点帮助，请给个小星星:star:**
## [NILMTK](https://github.com/nilmtk/nilmtk) 著名的NILM工具包
国内最简单安装教程：

1.直接安装Anaconda

Anaconda直接带Python和Jupyter 不需要分别下了

国内从清华镜像下快https://mirror.tuna.tsinghua.edu.cn/help/anaconda/

2.通过conda安装mamba

conda install -c conda-forge mamba

3.再用mamba安装nilmtk

mamba create -n nilmtk-env -c conda-forge -c nilmtk nilmtk


## [NILMTK-Contrib](https://github.com/nilmtk/nilmtk-contrib)
基于NILMTK，提供了一些经常使用的算法。
这里Contrib的意思是这些算法是NILMTK团队之外的学者提出的

国内最简单安装教程：

前期步骤与上述nilmtk安装教程同理

mamba create -n nilm -c conda-forge -c nilmtk nilmtk-contrib

这种方法可以直接连nilmtk也一起安装，但好像numpy版本有问题，需要手动降低到numpy==1.17.5，另外安装tensorflow==2.0.0 keras==2.3.1

有时间我联系一下nilmtk组织让他们改一下
## nilmtk-dl
一个中国学生写的本科毕业设计，主要是根据的NILMTK-Contrib中的改了一些，从2020年后不更新了

## [NILM-TTRNet](https://github.com/shaoshuai6666/NILM-TTRNet)
我自己写的一个用于NILM的名为TTRNet的深度学习网络，基于Transfomer等多个网络改进的，用的PyTorch框架，个人认为是非常不错的:joy:

