# NILMTK和NILMTK-Contrib安装教程
安装方法有两种，一个是用现成的包进行安装，一个使用源代码进行安装.包有些旧但稳定，源代码新但对技术要求高.

**如果你仅使用NILMTK推荐用现成的包安装,如果是研究生需要修改代码建议按第二种安装方法**

## 1.包安装方法

国内最简单安装教程：

* 用Mamba进行安装比原作者教程中用conda进行安装的速度更快且更稳定，可以解决国内网络问题

### 1.只安装nilmtk

```
1.直接安装Mamba

国内Mamba比conda快 https://mamba.readthedocs.io/en/latest/installation.html

2.用Mamba安装nilmtk

mamba create -n nilmtk-env -c conda-forge -c nilmtk nilmtk
```
### 2.同时安装NILMTK和NILMTK-Contrib
```
1.直接安装Mamba

国内Mamba比conda快 https://mamba.readthedocs.io/en/latest/installation.html

2.用Mamba安装nilmtk-contrib(不用先安装nilmtk 因为直接安装nilmtk-contrib会带着nilmtk也一起安装)

mamba create -n nilm -c conda-forge -c nilmtk nilmtk-contrib

3.直接安装nilmtk-contrib会带着nilmtk、keras一起安装，但需要自己手动安装tensorflow 

mamba install tensorflow-gpu

```
*注意：默认装的是tensorflow 2.3.0，在运行代码时，可能会有如下报错:

ValueError: Layer sequential_4 expects 1 inputs, but it received 2 input tensors. Inputs received: [<tf.Tensor 'IteratorGetNext:0' shape=(None, 99, 1) dtype=float32>, <tf.Tensor 'IteratorGetNext:1' shape=(None, 99, 1) dtype=float32>]

解决方法：把WindowGRU.py,RNN.py,DAE.py文件中的validation_data = [v_x,v_y]改为validation_data = (v_x,v_y)即可，好像tensorflow 2.0.0版本没有这个问题

有时间我联系一下nilmtk组织让他们改一下

## 2.源代码安装方法

* NILMTK好几年前就不更新了,我的仓库对NILMTK进行了更新,适配最新的pytorch和tensorflow,修改了一些bug,增添了新功能.
1. 命令行依次运行各行命令
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

2. 或者直接下载install.sh，并将其设置为可执行文件：
```
chmod +x install.sh
```
然后，您可以运行该脚本来执行这些命令：
```
./install.sh
```
