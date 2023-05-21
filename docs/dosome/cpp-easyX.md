




###  ###

### 基础 ###

!!! 基础
	1. 颜色：预定义，6 位 16 进制数，`RGB(-,-,-)`函数，`HSLtoRGB(-,-,-)`函数，`HSVtoRGB(-,-,-)`函数
	2. 坐标：坐标原点默认在左上角，x 轴正方向向右，y 轴正方向向下
		- 物理坐标：坐标原点具体在**设备**的左上角；逻辑坐标：坐标原点具体在**	窗口**的左上角
		- `setorigin()` 修改坐标原点；`setaspectratio(-,-)` 修改缩放比例 或 坐标轴方向
	3. 设备：“设备”指绘图表面；在 EasyX 中，设备分两种，一种是默认的绘图窗口，另一种是 IMAGE 对象。通过 `SetWorkingImage(-)` 函数可以设置当前用于绘图的设备；设置当前用于绘图的设备后，所有的绘图函数都会绘制在该设备上。

!!! 函数
	0. easyX 提供 绘图，颜色，图像颜色/样式，图形，文字，图像，消息处理 等相关函数；[参考](https://docs.easyx.cn/zh-cn/intro)
	1. 绘图设备
		- `cleardevice`	清除屏幕内容
		- `initgraph(-,-[,-]) HWND`	初始化绘图窗口
		- `closegraph`	关闭图形窗口
		- `getaspectratio(-,-)`	获取当前缩放因子
		- `setaspectratio(-,-)`	设置当前缩放因子
		- `graphdefaults`	恢复绘图窗口为默认值 `->` 重置视图、当前点、绘图色、背景色、线形、填充样式、字体为默认值
		- `setorigin(-,-)`	设置坐标原点
		- `setcliprgn(-)`	设置当前绘图设备的裁剪区
		- `clearcliprgn`	清除裁剪区的屏幕内容
	2. 颜色模型
		- `GetBValue BYTE`	返回指定颜色中的蓝色值
		- `GetGValue BYTE`	返回指定颜色中的绿色值
		- `GetRValue BYTE`	返回指定颜色中的红色值
		- `HSLtoRGB(-,-,-) COLORREF`	转换 HSL 颜色为 RGB 颜色
		- `HSVtoRGB(-,-,-) COLORREF`	转换 HSV 颜色为 RGB 颜色
		- `RGB(-,-,-) COLORREF`	通过红、绿、蓝颜色分量合成颜色
		- `RGBtoGRAY(-) COLORREF`	转换 RGB 颜色为 灰度颜色
		- `RGBtoHSL(-,-,-,-)`	转换 RGB 颜色为 HSL 颜色
		- `RGBtoHSV(-,-,-,-)`	转换 RGB 颜色为 HSV 颜色
		- `BGR(-) COLORREF`	交换颜色中的红色和蓝色
	3. 图形颜色及样式设置
		- `FILLSTYLE`	填充样式对象
		- `LINESTYLE`	画线样式对象
		- `getbkcolor COLORREF`	获取当前设备背景色
		- `getbkmode int`	获取当前设备图案填充和文字输出时的背景模式
		- `getfillcolor COLORREF`	获取当前设备填充颜色
		- `getfillstyle(-)`	获取当前设备填充样式
		- `getlinecolor COLORREF`	获取当前设备画线颜色
		- `getlinestyle(-)`	获取当前设备画线样式
		- `getpolyfillmode int`	获取当前设备多边形填充模式
		- `getrop2 int`	获取当前设备二元光栅操作模式
		- `setbkcolor(-)`	设置当前设备绘图背景色（设置背景色会在调用 `cleardevice` 后生效）
		- `setbkmode(-)`	设置当前设备图案填充和文字输出时的背景模式
			- `OPAQUE` 背景用当前背景色填充，`TRANSPARENT` 背景透明
		- `setfillcolor(-)`	设置当前设备填充颜色
		- `setfillstyle(-),(-,-,-),(-)`	设置当前设备填充样式
			- style：`BS_SOLID=0` 固实填充，`BS_NULL=1` 不填充，`BS_HATCHED=2` 图案填充，`BS_PATTERN=3` 自定义图案填充，`BS_DIBPATTERN=5` 自定义图像填充
			- hatch：指定填充图案，仅当 style 为 BS_HATCHED 时有效
				- `HS_HORIZONTAL=0`，`HS_VERTICAL=1`，`HS_FDIAGONAL=2`，`HS_BDIAGONAL=3`，`HS_CROSS=4`，`HS_DIAGCROSS=5`
			- ppattern：指定自定义填充图案或图像，仅当 style 为 BS_PATTERN 或 BS_DIBPATTERN 时有效
		- `setlinecolor(-)`	设置当前设备画线颜色
		- `setlinestyle(-),(-,-,-,-)`	设置当前设备画线样式
			- style：画线样式，分为 直线样式、端点样式、连接样式；多种样式可以自由组合，[详见链接](https://docs.easyx.cn/zh-cn/setlinestyle)
			- thickness：线的宽度，以像素为单位
			- puserstyle：用户自定义样式数组，仅当线型为 PS_USERSTYLE 时该参数有效；数组第一个元素指定画线的长度，第二个元素指定空白的长度，第三个元素指定画线的长度，第四个元素指定空白的长度，以此类推
			- userstylecount：用户自定义样式数组的元素数量
		- `setpolyfillmode(-)`	设置当前设备多边形填充模式
			- mode：`ALTERNATE`交替填充模式（默认值），`WINDING`根据绘图方向填充的模式
			- 注：该设置影响 `fillpolygon`、`solidpolygon`、`clearpolygon` 三个绘制多边形函数的执行效果
		- `setrop2(-)`	设置当前设备二元光栅操作模式
			- mode：有 16 种[模式](https://docs.easyx.cn/zh-cn/setrop2)
	4. 图形绘制
		- `arc`	画椭圆弧
		- `circle`	画无填充的圆
		- `clearcircle`	清空圆形区域
		- `clearellipse`	清空椭圆区域
		- `clearpie`	清空扇形区域
		- `clearpolygon`	清空多边形区域
		- `clearrectangle`	清空矩形区域
		- `clearroundrect`	清空圆角矩形区域
		- `ellipse`	画无填充的椭圆
		- `fillcircle`	画有边框的填充圆
		- `fillellipse`	画有边框的填充椭圆
		- `fillpie`	画有边框的填充扇形
		- `fillpolygon`	画有边框的填充多边形
		- `fillrectangle`	画有边框的填充矩形
		- `fillroundrect`	画有边框的填充圆角矩形
		- `floodfill`	填充区域
		- `getheight int`	获取绘图区的高度
		- `getpixel(-,-) COLORREF`	获取点的颜色
		- `getwidth int`	获取绘图区的宽度
		- `line(-,-,-,-)`	画直线
		- `pie(6)`	画无填充的扇形
		- `polybezier(-,-)`	画三次方贝塞尔曲线
		- `polyline(-,-)`	画多条连续的线
		- `polygon(-,-)`	画无填充的多边形
		- `putpixel(-,-,-)`	画点
		- `rectangle(-,-,-,-)`	画无填充的矩形
		- `roundrect`	画无填充的圆角矩形
		- `solidcircle`	画无边框的填充圆
		- `solidellipse`	画无边框的填充椭圆
		- `solidpie`	画无边框的填充扇形
		- `solidpolygon`	画无边框的填充多边形
		- `solidrectangle`	画无边框的填充矩形solidroundrect	画无边框的填充圆角矩形。
	5. 文字输出
		- `LOGFONT`	文字样式的结构体
		- `gettextcolor COLORREF`	获取当前文字颜色
		- `gettextstyle(-)`	获取当前文字样式
		- `outtextxy(-,-,-)`	在指定位置输出字符串（支持 `MBCS` 或 `Unicode` 编码的字符串）
			- `char[]`：`MBCS` 编码
			- `wchar_t[]`：`Unicode` 编码，常量：`L"..."`
			- `TCHAR[]`：支持两种编码，常量：`_T("...")`
			- `TPCTSTR`：支持两种编码
		- `drawtext(-,-,-)`	在指定区域内以指定格式输出字符串
			- 参数3 `uFormat`：定义了输出文字的方法，[参见此链接](https://docs.easyx.cn/zh-cn/drawtext)
		- `settextcolor(-)`	设置当前文字颜色
		- `settextstyle(3),(9),(14),(-)`	设置当前文字样式
		- `textheight(-) int`	获取字符串实际占用的像素高度
		- `textwidth(-) int`	获取字符串实际占用的像素宽度
	6. 图像处理
		- `IMAGE`	保存图像的对象，`IMAGE(-,-)`
		- `loadimage(2[,3]),(3[,3])`	读取图片文件(bmp/gif/jpg/png/tif/emf/wmf/ico)
			- 注：gif 图片仅加载一帧；gif 和 png 不支持透明
		- `saveimage(-[,-])`	保存绘图内容至图片文件
			- 注：默认效果是截图
		- `getimage(5)`	从当前绘图设备中获取图像（取子矩阵）
		- `putimage(3[,-]),(8)`	在当前绘图设备上绘制指定图像
			- DWORD：256 种三元光栅操作码
		- `GetWorkingImage IMAGE*`	获取指向当前绘图设备的指针
		- `rotateimage(3[,3])`	旋转 IMAGE 中的绘图内容
		- `SetWorkingImage([-])`	设定当前绘图设备
		- `Resize(-,-,-)`	调整指定绘图设备的尺寸
		- `GetImageBuffer(-) DWORD*`	获取绘图设备的显示缓冲区指针
		- `GetImageHDC(-) HDC`	获取绘图设备句柄
		- 三光栅操作
	7. 消息处理
		- 消息缓冲区可以缓冲 63 个未处理的消息。每次获取消息时，将从消息缓冲区取出一个最早发生的消息。消息缓冲区满了之后，不再接收任何消息
		- `ExMessage`	消息结构体：`message USHORT` 和 一个 `union` 构成
			- message：`WM_xxx`，用作消息(事件)的关键字（每个 message 都对应唯一一个 union 的某一个成员）
			- union：有多个结构或类型
				- 鼠标消息：`ctrl`，`shift`，`lbutton`，`rbutton`；`x`，`y`，`wheel`（`wheel`为鼠标滚动值，为120的倍数）
				- 按键消息：`extended`(是否为扩展键)，`prevdown`(在前一个状态是否按下)；`vkcode`(虚拟键码)，`scancode`(扫描码，依赖于 OEM)
				- 字符消息：`ch TCHAR`
				- 窗口消息：`wParam WPARAM`，`lParam LPARAM`
		- `flushmessage([-])`	清空消息缓冲区
			- filter：`EX_MOUSE`，`EX_KEY`，`EX_CHAR`，`EX_WINDOW`（默认`filter=-1`）（可以自由组合）
		- `getmessage([-]) ExMessage`，`getmessage(-[,-])`	获取一个消息。如果当前消息缓冲区中没有，就一直等待
			- filter：`EX_MOUSE`，`EX_KEY`，`EX_CHAR`，`EX_WINDOW`（默认`filter=-1`）（可以自由组合）
		- `peekmessage(-[,-,-])`	获取一个消息，并立即返回
			- msg：消息 ExMessage
			- filter：`EX_MOUSE`，`EX_KEY`，`EX_CHAR`，`EX_WINDOW`（默认`filter=-1`）（可以自由组合）
			- removemsg：处理完消息后，是否将其从消息队列中移除（默认为 true）
		- 注：默认情况下，连续的鼠标单击会被识别为一系列的单击事件。如果希望两个连续的鼠标单击识别为双击事件，请在创建绘图窗口的时候指定标志位 EW_DBLCLKS；filter 指的是 消息类别（以 `EX` 开头）
	8. 其他函数
		- `BeginBatchDraw`	开始批量绘图：执行后，任何绘图操作都将暂时不输出到绘图窗口上，直到执行 `FlushBatchDraw` 或 `EndBatchDraw` 才将之前的绘图输出
		- `EndBatchDraw`	结束批量绘制，并执行未完成的绘制任务
		- `FlushBatchDraw(),(-,-,-,-)`	执行未完成的绘制任务（可以指定某个子区域）
		- `GetEasyXVer TCHAR*`	获取当前 EasyX 库的版本信息
		- `GetHWnd HWND`	获取绘图窗口句柄
			- 注：在 Windows 下，句柄是一个窗口的标识，得到句柄后，可以使用 Windows API 中的函数实现对窗口的控制
		- `InputBox(2[,6])`	以对话框形式获取用户输入
			- pString：输入字符串指针
			- nMaxCount：指定 pString 指向的缓冲区的大小，该值会限制用户输入内容的长度（字符串结尾为 `\0`；回车占两个字符）
			- pPrompt：提示信息
			- pTitle：标题栏
			- pDefault：输入框默认值
			- width，height：对话框的宽（最小宽度的像素为 200），高
			- bHideCancelBtn：是够隐藏取消按钮（用于禁止用户取消输入），默认为 true
	9. graphics.h 暂留函数（已废弃的函数）
		- bar
		- bar3d
		- drawpoly
		- fillpoly
		- getcolor
		- getmaxx
		- getmaxy
		- getx
		- gety
		- linerel
		- lineto
		- moverel
		- moveto
		- outtext
		- setcolor
		- setwritemode
		- 鼠标
			- FlushMouseMsgBuffer
			- GetMouseMsg
			- MouseHit
			- PeekMouseMsg
			- MOUSEMSG

### 其他 ###

[参考](https://blog.csdn.net/qq_52661581/article/details/125124212)

[更详细的参考](https://blog.csdn.net/weixin_61777209/article/details/124185685)

[codebus](https://codebus.cn/)

[管理系统](https://blog.csdn.net/wxw1920/article/details/120188329)

```
基本介绍:
	- 原理 - 基于Windows图形编程，将Windows下的复杂程序过程进行封装，仅给用户提供一个简单熟悉的接口。用户对于图形库中函数的调用，最终都会由Windows底层的API实现
	- 安装 - https://easyx.cn/ (graphics.h)
	- 颜色 - RGB(-, -, -)
	- 坐标 - 横轴为x轴, 纵轴为y轴
使用:
	- initgraph(w, h, -), closegraph(), cleardevice():
		- 第三个参数 - SHOWCONSOLE, NOCLOSE, NOMINIMIZE
		- 初始化窗口, 关闭窗口, 清空绘图设备
		- setorigin(-, -) - 设置原坐标(默认为 (0, 0))
	- 图形绘制:
		- 形状:
			- [fill/solid]circle(-, -[, -]) - 宽，高，样式
			- rectangle(-, -, -, -)
			- line(-, -, -, -), ellipse(-, -, -, -)
			- pie(..)扇形, polygon(..)多边形, roundrect(..)圆角矩形
			- putpixel(..)点
		- setfillcolor(-) - 填充色
		- setlinecolor(-) - 线条色
		- setlinestyle(-, -) - 线条样式
		- setbkcolor(-) - 背景色
		- setbkmode(-) - 背景模式
			- TRANSPARENT 字体背景透明
	- 文字绘制:
		- outtextxy(-, -, -) - 绘制文字
		- settextcolor(-) - 文字颜色
		- settextstyle(-, -, -) - 字体样式(字体平均高度/平均宽度/类型)
		- textwidth(-) - 文本宽度
		- textheight(-) - 
	- 图像处理函数:
		- IMAGE - 图像类型
		- loadimage(-, -, -, -[, -]) - 加载图像(图像指针, src, w, h, 可调整大小)
		- putimage(-, -, -[, -])
	- 鼠标消息函数:
		- MouseHit() - 判断是否有鼠标点击 (左键，右键，中间，移动)
		- MOUSEMSG - 鼠标消息类
			- x, y, uMsg - 鼠标消息, 鼠标x坐标, 鼠标y坐标
			- uMsg:
				- WM_MOUSEMOVE
				- WM_<L|R|M>BUTTON<DOWN|UP|DBLCLK> - 左/中/右键 按下/弹起/双击
		- GetMouseMsg() MOUSEMSG - 获取鼠标消息对象
	- 键盘消息函数:
		- kbhit() - 判断是否有按键点击 (头文件 conio.h)
		- getch() char - 获取按键
		- GetAsyncKeyState(-) bool - 传入一个键值，如果按下返回true (键值：VK_UP, VK_DOWN, VK_LEFT, VK_RIGHT)
	- {==批量绘图==}:
		- 如果设备上不断进行绘图，则会出现闪屏现象
		- 可以在绘图前后加上 BeginBatchDraw(), EndBatchDraw()/FlushBatchDraw() 来解决
	- 修改窗口标题 | 弹出对话框:
		- GetHWnd() HWND - 获取窗口句柄对象
		- SetWindowText(-, -) - 修改窗口标题
		- MessageBox(-, -, -, -) int - 打开对话框 (第四个参数, 如: MB_OKCANCEL)
			- 返回值 - IDOK 确认, IDCANCEL 取消
	- 播放音乐:
		- 需要的头文件和静态库
		- mciSendString(-, -, -, -) - 命令字符串, 返回信息缓冲区(NULL表示不返回), 缓冲区大小, 一般为NULL
			- 命令字符串: "open <音乐url>", "play <音乐url>", "pause <音乐url>", "close <音乐url>"
		- 另外需要语句：
			#include<windows.h>
			#include<mmsystem.h>
			#pragma comment (lib,"winmm.lib")
	- 消息处理相关：
		- 消息缓冲区可以缓冲 63 个未处理的消息，满了以后不再接收消息
		- ExMessage - 消息结构体
			- 消息整数：
				- WM_<L|R|M>BUTTON<DOWN|UP|DBLCLK> - 左/中/右键 按下/弹起/双击
				- WM_MOUSE<MOVE|WHEEL> - 鼠标 移动/滚轮
				- EM_MOUSE - 鼠标移动
				- WM_KEYDOWN / EM_KEY - 按键按下
				- WM_CHAR / EM_CHAR - 字符消息
				- WM_ACTIVATE / EM_WINDOW - 窗口激活状态改变
				- WM_MOVE / WM_SIZE - 窗口移动 / 大小改变
		- flushmessage - 清除消息缓冲区
			- void flushmessage(BYTE filter = -1)
			- <filter> - -1 / EM_MOUSE / EM_KEY / EM_CHAR / EM_WINDOW
		- getmessage - 等待获取一个消息
			- getmessage(BYTE filter = -1) ExMessage
			- getmessage(ExMessage *msg, BYTE filter = -1)
		- peekmessage - 获取一个消息，并立即返回
			- bool peekmessage(ExMessage *msg, BYTE filter = -1, bool removemsg = true)
			- removemsg - 在 peekmessage 处理完消息后，是否将其从消息队列中移除
	- 输入:
		- InputBox(-, -[, -, -, -, -, -])
		- 输出字符串指针，最大长度[，提示信息，标题，输入框默认值，宽度，高度，是否只有ok按钮]

```

```cpp title="模板"
#include<graphics.h>
#include<conio.h>


// 1. 界面宽高
#define W 1280
#define H 640
// 2. 防越界函数
#define bu(val, low, up) max(min(val, up), low)

// 3. 一次性绘图 (结合lambda表达式)
template<typename T>
void f(T t){
	cleardevice(); // 清除设备 (清空画面)
	BeginBatchDraw(); // 开始批量绘图
	t();
	EndBatchDraw(); // 结束批量绘图
	// 自定义侦听&处理函数：
	// testkey();
	// testmouse();
}
// 4. 初始化
// 获取窗口句柄
HWND han = GetHWnd();
```

```title="按键(侦听并处理)"
int g;
void testkey(){
	if(!kbhit()) return ;	// 1.侦听按键
	char c = getch();	// 2.获取按键

	// 3.处理消息
	int dx = 0, dy = 0;
	if(GetAsyncKeyState(VK_UP) || c=='w'){
		dy = -g;
	}else if(GetAsyncKeyState(VK_DOWN) || c=='s'){
		dy = g;
	}else if(GetAsyncKeyState(VK_LEFT) || c=='a'){
		dx = -g;
	}else if(c == 'd'){
		dx = g;
	}
	x = bu(x+dx, 0, W-g);
	y = bu(y+dy, 0, H-g);
}
```

```title="鼠标"
void testmouse(){
	if(!MouseHit()) return ;	// 1.侦听鼠标
	MOUSEMSG msg = GetMouseMsg();	// 2.获取鼠标消息

	if(msg.uMsg == WM_LBUTTONDOWN){	// 3.处理消息
		// ...
	}
	
}
```