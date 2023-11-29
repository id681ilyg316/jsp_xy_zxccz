## 本项目实现的最终作用是基于JSP校园自行车租赁
## 分为4个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 友情链接留言系统公告管理
 - 校园新闻管理
 - 租赁站点管理
 - 站点管理员管理
 - 管理员登录
 - 管理员管理
 - 自行车信息管理
 - 自行车租用统计
 - 车辆类型管理
### 第2个角色为设计文稿，实现了如下功能：
 - 设计文稿截图
### 第3个角色为用户角色，实现了如下功能：
 - 在线留言
 - 归还记录管理
 - 校园新闻查看
 - 用户注册登录
 - 用户首页
 - 租用自行车
 - 租赁记录管理
 - 自行车展示
### 第4个角色为站点管理员角色，实现了如下功能：
 - 个人资料密码管理
 - 充值管理
 - 充值记录查询
 - 租赁归还记录管理
 - 站点管理员登录
 - 自行车管理
## 数据库设计如下：
# 数据库设计文档

**数据库名：** xy_zxccz

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [allusers](#allusers) |  |
| [cheliangleixing](#cheliangleixing) |  |
| [chongzhijilu](#chongzhijilu) |  |
| [dx](#dx) |  |
| [guihuanjilu](#guihuanjilu) |  |
| [liuyanban](#liuyanban) |  |
| [xinwentongzhi](#xinwentongzhi) |  |
| [yonghuzhuce](#yonghuzhuce) |  |
| [youqinglianjie](#youqinglianjie) |  |
| [zhandianguanliyuan](#zhandianguanliyuan) |  |
| [zhandianxinxi](#zhandianxinxi) |  |
| [zixingche](#zixingche) |  |
| [zulinjilu](#zulinjilu) |  |

**表名：** <a id="allusers">allusers</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | pwd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | cx |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="cheliangleixing">cheliangleixing</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | leixing |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="chongzhijilu">chongzhijilu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | yonghuming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  4   | chongzhijine |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="dx">dx</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类别  |
|  3   | content |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    | 内容  |

**表名：** <a id="guihuanjilu">guihuanjilu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | bianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 编号  |
|  3   | leixing |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | mingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名称  |
|  5   | pinpai |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | zujin |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | suozaizhandian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | guihuanren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | zulinshijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | guihuanshijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | zulintianshu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | jine |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 金额  |
|  13   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="liuyanban">liuyanban</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | cheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | xingbie |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  4   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | QQ号码  |
|  5   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  6   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  7   | neirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 内容  |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |
|  9   | huifuneirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="xinwentongzhi">xinwentongzhi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | biaoti |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类别  |
|  4   | neirong |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    | 内容  |
|  5   | tianjiaren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 添加人  |
|  6   | shouyetupian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 首页图片  |
|  7   | dianjilv |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="yonghuzhuce">yonghuzhuce</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | yonghuming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  5   | xingbie |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  6   | chushengnianyue |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | QQ号码  |
|  8   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  9   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  10   | shenfenzheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | touxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 头像  |
|  12   | yue |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  13   | dizhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  14   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  15   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |
|  16   | issh |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="youqinglianjie">youqinglianjie</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | wangzhanmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | wangzhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="zhandianguanliyuan">zhandianguanliyuan</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | yonghuming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  5   | xingbie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  6   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  7   | lianxishouji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | zulinzhandian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | dizhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  10   | gerenjieshao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="zhandianxinxi">zhandianxinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | zhandianming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="zixingche">zixingche</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | bianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 编号  |
|  3   | leixing |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | mingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名称  |
|  5   | pinpai |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | tupian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | zujin |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | suozaizhandian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | cheliangzhuangtai |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | issh |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  11   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="zulinjilu">zulinjilu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | bianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 编号  |
|  3   | leixing |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | mingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名称  |
|  5   | pinpai |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | zujin |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | suozaizhandian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | zulinren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | zulinshijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | issh |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  11   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**运行不出来可以微信 javape 我的公众号：源码码头**
