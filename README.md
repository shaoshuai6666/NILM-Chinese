# NILM-中文
完成我的毕业论文，顺便记录一下NILM(非侵入式负荷监测)的学习过程，帮助其他研究NILM的中国学生轻松上手

这三十天我会陆续更新，直到完成我的毕业论文

如果你同样对NILM感兴趣，欢迎加我QQ 1400237799，互相学习互相进步。

**如果你觉得这个仓库对你有一点点帮助，请给个小星星:star:**


## 一些汇总仓库（英文）：
### awesome NILM 
一个包含优秀的NILM文章的仓库，但只有文章链接https://github.com/ch-shin/awesome-nilm 个人认为不公开源代码的不算优秀，是骡子是马拉出来遛遛
### awesome NILM with code
一个包含优秀的公开代码的NILM文章的仓库https://github.com/zhgqcn/awesome-NILM-with-code
### ~~nilm-papers-with-code~~
https://github.com/klemenjak/nilm-papers-with-code 功能同上，但是2021年后就不更新了，内容也少，还是看上面那个仓库
## NILM工具或框架
### [NILMTK](https://github.com/nilmtk/nilmtk) 著名的NILM工具包
国内最简单安装教程：
```
1.直接安装Mamba

国内Mamba比conda快 https://mamba.readthedocs.io/en/latest/installation.html

2.用Mamba安装nilmtk

mamba create -n nilmtk-env -c conda-forge -c nilmtk nilmtk
```

#### [NILMTK-Contrib](https://github.com/nilmtk/nilmtk-contrib)
基于NILMTK，提供了一些经常使用的算法。
这里Contrib的意思是这些算法是NILMTK团队之外的学者提出的

国内最简单安装教程：

```
1.直接安装Mamba

国内Mamba比conda快 https://mamba.readthedocs.io/en/latest/installation.html

2.用Mamba安装nilmtk-contrib(不用先安装nilmtk 因为直接安装nilmtk-contrib会带着nilmtk也一起安装)

mamba create -n nilm -c conda-forge -c nilmtk nilmtk-contrib

3.直接安装nilmtk-contrib会带着nilmtk、keras一起安装，但需要自己手动安装tensorflow 

mamba install tensorflow-gpu

*默认装的是tensorflow 2.3.0，可能会有如下报错:

ValueError: Layer sequential_4 expects 1 inputs, but it received 2 input tensors. Inputs received: [<tf.Tensor 'IteratorGetNext:0' shape=(None, 99, 1) dtype=float32>, <tf.Tensor 'IteratorGetNext:1' shape=(None, 99, 1) dtype=float32>]

把WindowGRU.py,RNN.py,DAE.py文件中的validation_data = [v_x,v_y]改为validation_data = (v_x,v_y)即可，好像tensorflow 2.0.0版本没有这个问题

有时间我联系一下nilmtk组织让他们改一下
```
#### 如果你仅使用NILMTK推荐用Mamba安装,如果是研究生需要修改代码按下面的教程安装

* NILMTK好几年前就不更新了,我的仓库对NILMTK进行了更新,适配最新的pytorch和tensorflow,修改了一些bug,增添了新功能.

```
git clone https://github.com/shaoshuai6666/nilmtk.git 
git clone https://github.com/nilmtk/nilm_metadata/
cd nilm_metadata
python setup.py develop
cd ..
cd nilmtk
python setup.py develop
cd ..
git clone https://github.com/shaoshuai6666/nilmtk-contrib.git
cd nilmtk-contrib
python setup.py develop
cd ..
```
或者直接下载install.sh，并将其设置为可执行文件：
```
chmod +x install.sh
```
然后，您可以运行该脚本来执行这些命令：
```
./install.sh
```
## 相关研究机构
1. [非侵入式负载监测国际研讨会(International Workshop on Non-Intrusive Load Monitoring)](http://nilmworkshop.org/)
2. [欧盟NILM研讨会(EU NILM Workshop)](https://www.oliverparson.co.uk/eu-nilm-workshop)
2. [弗劳恩霍夫微电子电路与系统研究所(Fraunhofer IMS)](https://www.ims.fraunhofer.de/en/Business_Units_and_Core_Competencies/Electronic-Assistance-Systems/Applications/NILM.html)
## 我个人认为不错的工作，适合新手学习
### nilmtk-dl
一个中国学生写的本科毕业设计，主要是根据的NILMTK-Contrib中的改了一些，从2020年后不更新了

### [NILM-TTRNet](https://github.com/shaoshuai6666/NILM-TTRNet)
我自己写的一个用于NILM的名为TTRNet的深度学习网络，基于Transfomer等多个网络改进的，用的PyTorch框架，个人认为是非常不错的:joy:

