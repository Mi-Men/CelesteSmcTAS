# celeste.smw TAS 用时 14:41.885

这是 **Super Mario World** 的改版，根据 **Celeste** 为参考的 ROM hack

该 TAS 是这个改版的速通向录像

- 使用 BizHawk 来制作 TAS

- 速通向

- 使用捷径路线

> 加载此 TAS 文件时在作者那一项中会显示 **默认用户** (`default user`)，我在创建此 TAS 文件时是用编辑器创建的，我不太清楚编辑器里能不能更改作者名，所以作者这一项没有动
>
> 在游戏名称那一项中会显示 `celeste` ，实际游戏名是叫 **celeste.smw** 。我得到游戏 ROM 时文件名称是叫 celeste.smc ，在创建 TAS 文件时默认将文件名称当作游戏名称

## 该 TAS 文件的一些信息

|类别|信息|
|-|-|
|系统|Super Nintendo Entertainment System|
|模拟器|BizHawk 2.6.1|
|重录次数|25670|
|总帧数|53000|
|帧率|60.0984755|
|游戏名称|celeste.smw|
|游戏版本|v1.0|
|ROM 文件名称|celeste|
|ROM SHA-1|09A145A2E7EE861C1A0CEEA9B717EBF83B0D4964|
|作者|默认用户|
|模拟器核心|Snes9x|

> 这个 TAS 的制作人数只有我一个人，作者这部分的作者名是 Mi men

## 新增的操作方式说明

该游戏的部分技巧与原版 Super Mario World 一样，例如在空中时不按方向键会保持速度。但是不适用 celeste 里的速通技巧，例如 抓角加速、凌波微步、无体力爬墙 等，是无法使用的

游戏增加了celeste 里冲刺和蹬墙跳（没有爬墙，但可以沿着墙往下滑）

冲刺会让玩家以 3.9375 像素每帧进行移动，可以向8个方向冲刺，冲刺后有10帧的冷却时间，在这冷却时间中，玩家是无法操作方向的，如果在地面上，玩家可以使用跳跃来进行冲刺跳`（冲刺后需要间隔一帧才可以使用冲刺跳，否则就是原地跳跃）`，跳跃后会恢复方向的操作权

在使用冲刺跳时，玩家的移动速度会损失 0.0625 像素，使玩家的速度为 3.875 像素每帧。在冲刺跳后，玩家会恢复冲刺次数，可以在空中再次冲刺

在冲刺跳时，玩家会跳的比原地跳更高，原因是在冲刺时玩家的加速度为最大（加速度就是原版游戏中正常按加速键时加速到满的情况）

在紧贴墙壁时，玩家需要对着墙壁按方向键贴着墙往下滑，在此玩家可以使用蹬墙跳，但是不能爬墙。在使用蹬墙跳时，玩家的横向速度为 2 像素每帧，竖向速度为 -4.5 像素`（起始帧的速度，不是每帧）`

蹬墙跳时，玩家的横向速度可以加速到 2.3125 像素每帧，但是减速会有限制。对着墙壁的方向在 15 帧内操作是无效的，无法控制速度。想减慢速度需要按住对着墙壁相反的方向键`（不要按加速键）`，最多可以减速到 1.1875 像素每帧

玩家的竖向速度在蹬墙跳时的起始帧都为 -4.5 像素，无论是普通跳跃还是旋转跳起始帧都为 -4.5 像素

## 关卡

### 序章

序章关卡无法使用冲刺，但是可以使用蹬墙跳

### 遗弃的城市

从该关卡开始就可以使用冲刺，也出现了横向的弹簧和绿色水晶

横向弹簧会给予极大的横向速度和竖向速度，横向和竖向都为 5 像素

绿色水晶可以让玩家恢复冲刺次数

### 旧址

该关卡出现了梦境方块和圆形开关。在关卡后半段有玩家残影来追逐玩家

游戏里的梦境方块与 celeste 的梦境方块有点不一样。玩家在冲出梦境方块后不可以而外跳跃一次。在斜向冲进梦境方块时撞墙不会死亡，而是沿着墙壁滑出去。与 celeste 相同的地方是冲出梦境方块会恢复冲刺

圆形开关其实我随便取地名称，原本的名称我不清楚。它的功能是与红蓝方块开关的机制一样，不过是一次性的，玩家触碰到后便自动使用并消失

在关卡后半段中会有残影追逐玩家，残影的行为模式是模仿玩家之前的动作来追逐玩家

### 度假山庄

该关卡出现了灰尘精灵和钥匙和门

玩家碰到灰尘精灵会死亡。灰尘精灵分为 3 种，原地不动的、按固定路线移动的和生成的

生成的灰尘精灵是在长毛的地板或墙壁中生成，玩家触碰到这些毛后离开会生成灰尘精灵

### 山脊

该关卡出现了绿色泡泡和风向机制

玩家在绿色泡泡里时会向指定的方向进行移动，横向和竖向的速度都为 4 像素，移动一段时间后会自动消失。在泡泡里时，泡泡会等待一段时间后进行移动，玩家可以通过冲刺让泡泡立即移动

泡泡在移动的过程中，玩家可以主动冲出泡泡，主动冲出泡泡后泡泡会消失，玩家的速度会变为冲刺时的速度（3.9375 像素）而不是泡泡自动消失后的 4 像素的速度

风向机制会对玩家的速度有影响，顺风时会快 1 像素，逆风时会慢 1 像素。在原地时玩家会被风吹动

### 镜之寺庙

该关卡出现了红色泡泡，在关卡最后一个场景需要搬运困在水晶里的 Theo

红色泡泡的机制与绿色泡泡的机制有一点不同，大部分一样，可以指定方向移动，速度为 4 像素，不同的是绿色泡泡移动后一段时间会消失，而红色泡泡不会，红色泡泡会一直移动，除非撞到墙或玩家主动冲出泡泡才会消失

在搬运水晶时，玩家的搬运方式与抓龟壳是一样的。在抓住水晶时玩家不能蹬墙跳

水晶的机制只有在抓取时与龟壳的机制时一样的，大部分不同。水晶不能在地面上滑行，也不能踩

在 Theo 死亡时会让玩家也死亡，Theo 的深渊坠落判定比玩家要高。玩家掉入关卡底部时里死亡判定会有一定的宽限距离，玩家可以在这个宽限距离里冲刺出去，而 Theo 则不行，Theo 的判定触碰到关卡底部的边缘就判定为死亡

这个关卡是有空龟壳和耀西的，在最后一个场景中可以将 Theo 扔在一个安全的位置，使用龟壳让耀西拥有翅膀来飞过难以通过的地方

> 这游戏的刺与原版游戏不一样，判定优先级比砖块高。耀西碰到圆刺时会让玩家判定为死亡
>
> Theo 在碰到刺时是不会死亡的

### 沉思

该关卡出现了羽毛和愤怒方块，在关卡的后面需要与 Madeline 的负面（也就是 Badeline）对决

羽毛可以让玩家在空中飞行一段时间，在飞行途中可以控制飞行角度

由于没有摇杆，飞行的角度是用方向键控制的，在松开方向键时不会像 celeste 里的羽毛一样会减速

在飞行时的角度一共有 24 个方向可以移动，在移动速度中对角的方向是最慢的，横向和竖向的速度只有 2 像素每帧。在其他角度中至少有一个方向速度是 3 像素每帧

愤怒方块会在玩家进行冲刺撞击后移动，移动方向为玩家撞击的那一面

愤怒方块的移动速度是逐渐加速的，满速是 3 像素每帧

在与 Badeline 对决时，玩家只要触碰到 Badeline 就可以发起攻击，Badeline 受到伤害后会移动到固位置

攻击后玩家的竖向速度为 -6 像素而跳起来，横向速度则根据 Badeline 在那个位置决定是否给予 6 像素每帧的速度（未给予速度时，默认以玩家当前速度为准）

Badeline 的攻击方式与 celeste 一样，发射圆球或激光进行攻击

### 登顶

该关卡玩家可以连续冲刺 2 次，同时玩家需要经过之前遇到过的的关卡，除了沉思关卡外玩家需要经过一次，经过所有关卡后便是山顶关卡

## 内存监视

以下是我制作 TAS 时所监视的内存地址

|内存地址|描述|长度|类别|
|-|-|-|-|
|0x000094|X 位置|2 字节|有符号整数|
|0x000096|Y 位置|2 字节|有符号整数|
|0x0013DA|X 位置（亚像素）|1 字节|十六进制|
|0x0013DC|Y 位置（亚像素）|1 字节|十六进制|
|0x00007B|X 速度|1 字节|有符号整数|
|0x00007D|Y 速度|1 字节|有符号整数|
|0x0013E4|加速度|1 字节|无符号整数|
|0x0018C5|冲刺次数|1 字节|无符号整数|
|0x0018C6|冲刺冷却|1 字节|无符号整数|

> 速度值我可能没有找准，因为在山脊关卡中在有风的情况下速度值没有发生而外的变化，但是确实有速度上的影响