---
title:  "传感器"
date:   2019-10-14 09:50:00 +0800
draft:  true
---

移动设备和PC相比，具有丰富的传感器可以用，在开发过程中适当地应用这些传感器可以使得你的App功能更加丰富、使用起来更方便。

## 常用传感器

Android支持的主要传感器如下：

|传感器|类型|描述|通常用途|
|--- |--- |--- |--- |
|TYPE_ACCELEROMETER|硬件|测量x、y、z轴的加速度(包括重力加速度，m/s<sup>2</sup>).|动作检测(摇动、倾斜等).|
|TYPE_AMBIENT_TEMPERATURE|硬件|测量室温(°C).|监测空气温度.|
|TYPE_GRAVITY|软件 硬件|测量x、y、z轴的重力加速度(m/s<sup>2</sup>).|动作检测(摇动、倾斜等).|
|TYPE_GYROSCOPE|硬件|测量x、y、z轴的旋转(rad/s). |旋转检测(自旋、翻面等).|
|TYPE_LIGHT|硬件|测量环境光亮度(lx).|控制屏幕亮度.|
|TYPE_LINEAR_ACCELERATION|软件 硬件|测量x、y、z轴的加速度(不包括重力加速度，m/s<sup>2</sup>).|监测某一轴上的加速度.|
|TYPE_MAGNETIC_FIELD|硬件|测量x、y、z轴的环境地磁场(μT).|指南针.|
|TYPE_PRESSURE|硬件|测量环境气压(hP、mbar). |监测气压变化.|
|TYPE_PROXIMITY|硬件|测量物体距离设备屏幕的距离(cm).|打电话时手机的位置. |
|TYPE_RELATIVE_HUMIDITY|硬件|测量相对环境湿度(%). |监测露点以及绝对、相对湿度. |
|TYPE_ROTATION_VECTOR|软件 硬件 |通过提供三个方向的旋转向量来测量设备的旋转.|动作和旋转检测.|


## 位置信息

手机的位置信息对于应用而言非常重要，甚至由此衍生出了[LBS][]。通过Android设备我们可以获取当前位置信息，并根据位置信息对App进行动态改变。

要使用位置信息，需要申请位置信息的权限：

~~~ xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.google.android.gms.location.sample.basiclocationsample" >

  <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
</manifest>
~~~

位置信息可以结合[百度地图][baidu]或者[高德地图][amap]来实现更丰富的功能。

## 作业

为你的应用添加传感器或者位置信息支持。

[lbs]: https://en.wikipedia.org/wiki/Location-based_service
[baidu]: http://lbsyun.baidu.com/index.php?title=androidsdk
[amap]: https://lbs.amap.com/
