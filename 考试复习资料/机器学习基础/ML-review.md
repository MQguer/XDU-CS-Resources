### 复习重点

<img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231119104957244.png" alt="image-20231119104957244" style="zoom: 31.5%;" />  

---

### 零碎知识点

三大集

![image-20231120160520705](https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231120160520705.png) 

偏差与方差 https://zhuanlan.zhihu.com/p/38853908?utm_id=0

<img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231120160615606.png" alt="image-20231120160615606" style="zoom:67%;" /> 

监督学习 https://blog.csdn.net/qq_36693723/article/details/130383440

![image-20231120162318279](https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231120162318279.png)  

PCA方法 https://www.cnblogs.com/wj-1314/p/8032780.html

![image-20231120222236774](https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231120222236774.png) 

卷积计算：略（还有最大池化）

矩阵范数

<img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231120145848372.png" alt="image-20231120145848372" style="zoom: 60%;" /> 

向量范数

<img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231120150010788.png" alt="image-20231120150010788" style="zoom: 50.2%;" /> 

tanhx

![img](https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/df153026f30eed5b03e571dc4a16aafe.svg)  

---

### 总结复习

#### 回归问题 Regression

- 线性回归 Linear Regression

  - 线性回归，顾名思义是利用线性模型对连续数据点进行拟合的，常见的广义线性模型：

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121171808981.png" alt="image-20231121171808981" style="zoom:67%;" /> 

  - 最小二乘法 *Generalized Least Squares* or *Least Square Method*

    最简单也是最常见的线性回归是最小二乘法

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121172120147.png" alt="image-20231121172120147" style="zoom: 50%;" /> 

  - 梯度下降法

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121172454241.png" alt="image-20231121172454241" style="zoom: 51%;" /> 

  - 问题

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121172558545.png" alt="image-20231121172558545" style="zoom:46.8%;" /> 

    

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121172617904.png" alt="image-20231121172617904" style="zoom:60%;" /> 
    
    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121172634159.png" alt="image-20231121172634159" style="zoom:46.5%;" />   

#### 分类问题 Classification

- 逻辑回归 Logistic Regression

  - 对数几率函数（ y=P(Y=1|x) ）

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121160349163.png" alt="image-20231121160349163" style="zoom:50%;" />  

  - 似然函数与损失函数

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121160425233.png" alt="image-20231121160425233" style="zoom:46%;" /> 

  - 正则化（Regularization）一般会采用 L1 范式或者 L2 范式

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121162936743.png" alt="image-20231121162936743" style="zoom: 33%;" /> 

  - 与SVM的关系

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121160915888.png" alt="image-20231121160915888" style="zoom: 56%;" /> 

- 感知机 Perceptron

  - 激活函数

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121161231585.png" alt="image-20231121161231585" style="zoom:50%;" /> 

  - 点面距离

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121170153887.png" alt="image-20231121170153887" style="zoom: 50%;" /> 

  - 损失函数

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121170332061.png" alt="image-20231121170332061" style="zoom:51%;" /> 

  - 随机梯度下降法取最小损失值

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121170516743.png" alt="image-20231121170516743" style="zoom: 48.5%;" /> 

- 多层感知机 MLP

  - 结构：一个输入层、一个或多个隐藏层、一个输出层

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/v2-b1f52e2a6efde477e9f6628f360610aa_720w.webp" alt="img" style="zoom: 50%;" />  

  - 神经网络结构

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121171603512.png" alt="image-20231121171603512" style="zoom: 50%;" /> 

  - 激活函数

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121170943187.png" alt="image-20231121170943187" style="zoom:50%;" /> 

  - one-hot coding:  Decomposition of an n-class proble into a n binary classification problem 

- 支持向量机 SVM 

  - 支持向量机： https://zhuanlan.zhihu.com/p/463748604

  - SVM有三宝：**间隔，对偶，核技巧**

  - **间隔（Margin）**：将分界面向两个方向平移至不能平移的位置（碰到了一个点），可以平移的距离叫做Margin（间隔）。正好卡住这些分界面的点称为**Support Vectors（支持向量）**。不同方向的Margin不同，Support Vectors也不同。直观上说，Margin越大，容错性越强。所以，希望这个**分界面的Margin越大越好**。SVM可以最大化Margin（线性支持向量机）。

  - 间隔公式与优化函数：

    SVM将线性分类器定义为：WX+b=0.

    将正类的支持向量点所构成的超平面定义为： WX+b=1;

    将负类的支持向量点所构成的超平面定义为： WX+b=-1；

    此时可以得到正类与负类之间的 margin： 2/||W||。

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121161826355.png" alt="image-20231121161826355" style="zoom:50%;" /> 

  - Soft Margin（处理噪点问题，并不是处理实际上的线性不可分）

    - 很多情况无法做到完美分割，于是加一个允错范围。当加上它之后你可以都大于0或者小于0，就近似看为全部分对。但由于引入了允错范围，所以还要加上一个惩罚量。
    - ![img](https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/v2-301272bb0b305c1606744b7068456680_720w.webp) 

  - 参数 C 

    - In Support Vector Machines (SVM), the parameter C is a **regularization** parameter that controls the trade-off between achieving a low training error and a low testing error. It is a crucial parameter in SVM, influencing the shape of the decision boundary and the model's generalization performance.
    - The SVM optimization problem aims to find a hyperplane that separates different classes in the feature space while maximizing the margin between the classes. The parameter C is introduced to handle cases **where the data is not linearly separable or when there are outliers（离群值 ）**.
    - In short, high C, high penalty (惩罚), high complexity, may overfit
    - ![image-20231121164923243](https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121164923243.png) 

  - **对偶问题 （Dual Problem）**

    基于拉格朗日乘子法可以得到上述Margin最优问题的对偶问题（最大化下式）：

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/v2-bf8607ccd4bd7b0492a736665ec3a16a_720w.webp" alt="img" style="zoom:80%;" /> 

    根据偏导为0求解：

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121163721305.png" alt="image-20231121163721305" style="zoom:48%;" /> 

  - 核技巧（Kernel Trick）

    引入核函数，将低维空间数据，映射到高维的特征空间，将线性不可分问题变为线性可分。

    [核函数(Kernel function)-CSDN博客](https://blog.csdn.net/qq_42885862/article/details/124314351)    注：多项式核函数直接写$(1+x^Ty)^d$即可

    <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/12cad391f02d48f99b03469d8ab1976d.png" alt="img" style="zoom:80%;" /> 

- CNN

  - <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121180235209.png" alt="image-20231121180235209" style="zoom:50%;" /> 

  - <img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121180223419.png" alt="image-20231121180223419" style="zoom:52%;" /> 

---

### 常用英文单词

supervised：有监督的

regression/classification/clustering：不会吧不会吧，不会有人不知道吧

bias：偏差

variance：方差

converge/convergence ：收敛

eigenvalue：特征值

threshold：门槛；阈值

neuron：神经元

neural：神经的

regularization：正则化

convolutional：卷积的

dot product：点积

<img src="https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20231121172400487.png" alt="image-20231121172400487" style="zoom:50%;" /> 