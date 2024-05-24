本次实验需要下载电路到FPGA芯片上，并分配好IO，大致思路及连线如下图。



![总体思路](https://s2.loli.net/2024/04/03/xGUtERZgzOKQIc2.jpg)

带清零功能的模10计数器如下：S4为计数，S3为清零。[演示视频](https://www.youtube.com/shorts/nvhM4Yskp8M)

<img src="https://s2.loli.net/2024/04/03/jnoHydITuzFE6Ob.jpg" style="transform: rotate(90deg); zoom: 25%;">

交通信号灯如下：一直点S4即可。[演示视频](https://www.youtube.com/shorts/Kfbfx3u-1Lg)

<img src="https://s2.loli.net/2024/04/03/QF1HlAorKa8UDjN.jpg" style="transform: rotate(90deg); zoom: 25%;">

Note:  切换模块前记得重新下载一遍，不然输出全为高电平...