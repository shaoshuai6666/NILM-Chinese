# NILM-中文
完成我的毕业论文，顺便记录一下NILM(非侵入式负荷监测)的学习过程，帮助其他研究NILM的中国学生轻松上手

这三十天我会陆续更新，直到完成我的毕业论文

如果你同样对NILM感兴趣，欢迎加我QQ 1400237799，互相学习互相进步。

**如果你觉得这个仓库对你有一点点帮助，请给个小星星:star:**
## [NILMTK](https://github.com/nilmtk/nilmtk) 著名的NILM工具包
国内最简单安装教程：

1.直接安装Mamba

国内Mamba比conda快 https://mamba.readthedocs.io/en/latest/installation.html

2.用Mamba安装nilmtk

mamba create -n nilmtk-env -c conda-forge -c nilmtk nilmtk


## [NILMTK-Contrib](https://github.com/nilmtk/nilmtk-contrib)
基于NILMTK，提供了一些经常使用的算法。
这里Contrib的意思是这些算法是NILMTK团队之外的学者提出的

国内最简单安装教程：

先安装Mamba

mamba create -n nilm -c conda-forge -c nilmtk nilmtk-contrib

*直接安装nilmtk-contrib会带着nilmtk也一起安装，还有keras，但需要自己手动安装tensorflow 

mamba install tensorflow-gpu

*默认装的是2.3.0，可能会有如下报错:

ValueError: Layer sequential_4 expects 1 inputs, but it received 2 input tensors. Inputs received: [<tf.Tensor 'IteratorGetNext:0' shape=(None, 99, 1) dtype=float32>, <tf.Tensor 'IteratorGetNext:1' shape=(None, 99, 1) dtype=float32>]

把WindowGRU.py,RNN.py,DAE.py文件中的validation_data = (v_x,v_y)改为validation_data = [v_x,v_y]即可，好像2.0.0版本没有这个问题

有时间我联系一下nilmtk组织让他们改一下
## nilmtk-dl
一个中国学生写的本科毕业设计，主要是根据的NILMTK-Contrib中的改了一些，从2020年后不更新了

## [NILM-TTRNet](https://github.com/shaoshuai6666/NILM-TTRNet)
我自己写的一个用于NILM的名为TTRNet的深度学习网络，基于Transfomer等多个网络改进的，用的PyTorch框架，个人认为是非常不错的:joy:

