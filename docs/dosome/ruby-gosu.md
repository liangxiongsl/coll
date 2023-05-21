
[参考](https://www.libgosu.org/rdoc)，[gosu官网](https://www.libgosu.org/ruby.html)，[github](https://github.com/gosu/gosu)


[gamedev游戏竞赛](https://gamedev.net/)

!!! 顶级命名空间
	- Gosu
		1. Window
		2. Image
		3. Color
		4. Font
		5. Song
		6. GLTextInfo
		7. TextInput
		8. Sample
		9. Channel
	- Numeric

上述类中：

- `Window` 是窗口，也就是程序可见的主体
- `Image`，`Color`，`Font` 是前端内容
- `TextInput` 是完全用于后端的类
- `GLTextInfo` 没搞懂
- `Song`，`Sample`，`Channel` 均是和音乐有关的

### Gosu ###

[Gosu命名空间的方法和常量，点我](https://www.rubydoc.info/gems/gosu/Gosu#draw_triangle-class_method)

!!! note "Gosu"
	- 常量
		- `MAJOR_VERSION`，`MINOR_VERSION`，`POINT_VERSION`，`VERSION`，`LICENSES`
		- `KB_XXXX`：键盘按键
		- `MS_XXXX`：
		- `GP_XXXX`：游戏手柄按键
	- 绘制基元
		- `.draw_line(x1, y1, c1, x2, y2, c2, z = 0, mode = :default) ⇒ void`：绘制直线
		- `.draw_quad(x1, y1, c1, x2, y2, c2, x3, y3, c3, x4, y4, c4, z = 0, mode = :default) ⇒ void`：绘制四边形
		- `.draw_rect(x, y, width, height, c, z = 0, mode = :default) ⇒ void`：绘制矩形
		- `.draw_triangle(x1, y1, c1, x2, y2, c2, x3, y3, c3, z = 0, mode = :default) ⇒ void`：绘制三角形
	- 操纵当前的绘图上下文：
		- `.clip_to(x, y, w, h) { ... } ⇒ void`：
		- `.flush ⇒ void`：
		- `.gl(z = nil) { ... } ⇒ void`：
		- `.record(width, height) { ... } ⇒ Gosu::Image`：
		- `.render(width, height) { ... } ⇒ Gosu::Image`：
		- `.rotate(angle, around_x = 0, around_y = 0) { ... } ⇒ void`：
		- `.scale(scale_x, scale_y, around_x, around_y) { ... } ⇒ void`：
		- `.transform(m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12, m13, m14, m15) { ... } ⇒ void`：
		- `.translate(x, y) { ... } ⇒ void`：
	- 类方法：
		- `.angle(x1, y1, x2, y2) ⇒ Float`：
		- `.angle_diff(angle1, angle2) ⇒ Float`：
		- `.available_height(window = nil) ⇒ Integer`：
		- `.available_width(window = nil) ⇒ Integer`：
		- `.axis(id) ⇒ Float`：
		- `.button_down?(id) ⇒ true, false`：
		- `.button_id_to_char(id) ⇒ String?`：
		- `.button_name(id) ⇒ String?`：
		- `.char_to_button_id(char) ⇒ Integer?`：
		- `.clipboard ⇒ String`：剪贴板内容
		- `.clipboard=(text) ⇒ nil`：剪贴板赋值
		- `.default_font_name ⇒ String`：
		- `.distance(x1, y1, x2, y2) ⇒ Float`：
		- `.fps ⇒ Integer`：
		- `.gamepad_name(index) ⇒ String?`：
		- `.language ⇒ String`：
		- `.milliseconds ⇒ Integer`：
		- `.offset_x(theta, r) ⇒ Float`：
		- `.offset_y(theta, r) ⇒ Float`：
		- `.random(min, max) ⇒ Float`：
		- `.screen_height(window = nil) ⇒ Integer`：
		- `.screen_width(window = nil) ⇒ Integer`：



### Gosu::Window ###

实际上一次应该只有一个此 `Window` 的实例。这在以后可能会也可能不会改变

作为标准 Gosu 应用程序基础的主类。管理 Gosu 所有核心组件的初始化并提供计时功能


!!! note "Gosu::Window"
	- 实例属性
		- width ⇒ Integer，height ⇒ Integer，caption ⇒ String：窗口 宽，高，标题
		- mouse_x ⇒ Float，mouse_y ⇒ Float：鼠标 x，y 坐标
		- update_interval ⇒ Float：调用 update() 的间隔
		- {==borderless ⇒ Object，fullscreen ⇒ Object，resizable ⇒ Object：只写的属性：在无边框和有边框之间切换，在窗口模式和全屏之间切换，在可调整大小和固定模式之间切换==}
		- {==text_input ⇒ TextInput?：判断 TextInput 是否处于活跃状态？==}
	- 回调
		- update ⇒ void，draw ⇒ void：更新数据，绘制窗口；每个长度为 `update_interval` 时间段依次执行两个方法
			- 选项：`:fullscreen (bool)`是否全屏，`:resizable (bool)` 是否可调整窗口大小，`:borderless (bool)`是否无边框，`:update_interval (Float)` 更新间隔
		- `button_down(id) ⇒ void`，`button_up(id) ⇒ void`：按下，松开按键
		- close ⇒ bool：尝试关闭窗口
		- drop(filename) ⇒ Object：将文件拖到窗口
		- gain_focus ⇒ Object，lose_focus ⇒ Object：窗口 得到，失去 焦点
		- {==needs_cursor? ⇒ true, false，needs_redraw? ⇒ true, false：控制系统光标在窗口上的可见性==}
		- {==gamepad_connected(index) ⇒ Object，gamepad_disconnected(index) ⇒ Object：==}
	- 实例方法
		- `initialize(width, height, **options**) ⇒ Window`：构造方法
		- `show ⇒ void`：显示窗口
		- `close! ⇒ void`：告知窗口尽快结束当前循环
		- `borderless? ⇒ true, **false**`，`fullscreen? ⇒ true, **false**`，`resizable? ⇒ true, **false**`
		- {==`tick ⇒ true, false`==}

### Gosu::Image ###

!!! note "Gosu::Image"
	- 实例属性
		- width ⇒ Integer，height ⇒ Integer readonly：图像的 宽，高
	- 创建和加载图像
		- `#`initialize(source, **options** = {}) ⇒ Image constructor：从本地读取图像
			- 选项：`:tileable (bool)` 缩放时没有柔化边缘（平铺），`:retro (bool)` 缩放图像时不进行插值图像，`:rect (Array)` 获取图像子矩阵（用 $[x_1,y_1,x_2,y_2]$ 表示）
		- `#`subimage(left, top, width, height) ⇒ Image?：返回子图像
		- .load_tiles(source, tile_width, tile_height, **options** = {}) ⇒ Array<Gosu::Image>：从本地读取图像，将原图划分为 $\lfloor \frac {w}{sub~w}\rfloor \cdot \lfloor\frac {h}{sub~h}\rfloor$ 个子图像集合
			- `:tileable (bool)`，`:retro (bool)`
		- .from_blob(width, height, rgba = "\0\0\0\0" * (width * height)) ⇒ Object：创建具有 宽，高，RGBA，像素 的新图像
		- .from_text(text, line_height, **options** = {}) ⇒ Gosu::Image：创建文本
			- `:font (String)`：设置系统字体名 或 TrueType Font(TTF) 文件的路径；默认值为`Gosu::default_font_name`
			- `:bold (bool)` 加粗，`:italic (bool)` 斜体，`:underline (bool)` 下划线
			- `:width (Integer)` 宽度，`:spacing (Integer)` 行间距，`:align (:left, :right, :center, :justify)` 对齐方式，`:retro (true, false)` 缩放图像是不进行插值图像
		- .from_markup(markup, line_height, **options** = {}) ⇒ Object
			- 选项参考 `from_text`
	- 绘制图像(实例)
		- draw(x, y, z = 0, scale_x = 1, scale_y = 1, color = 0xff_ffffff, mode = :default) ⇒ void：绘制图像，左上角坐标为 (x,y)
		- draw_as_quad(x1, y1, c1, x2, y2, c2, x3, y3, c3, x4, y4, c4, z, mode = :default) ⇒ void：将图像绘制为任意四边形
		- draw_rot(x, y, z = 0, angle = 0, center_x = 0.5, center_y = 0.5, scale_x = 1, scale_y = 1, color = 0xff_ffffff, mode = :default) ⇒ void：绘制旋转图像
	- 实例方法
		- gl_tex_info ⇒ Gosu::GLTexInfo?：返回一个对象，该对象包含有关图像的基础 OpenGL 纹理 和 UV 坐标信息
		- insert(source, x, y) ⇒ void：本地图像从 (x,y) 为该图像的左上角覆盖原图
		- save(filename) ⇒ void：将图像保存到本地
		- to_blob ⇒ String：将关联的纹理内容作为打包的 RBGA 值的二进制字符串进行返回，与库 RMagick 中的 `Magick::Image.from_blob` 一起使用很有用（RMagick 是基于 ImageMagick c 库进行封装的，广泛应用于 科学，工程，web 等领域）

### Gosu::Color ###

ARGB 颜色值，每个通道有 8 位

在所有 Gosu API 中，颜色可以与 0xAARRGGBB 形式的整数文本互换使用

!!! note "Gosu::Color"
	- 常量
		- `NONE = Gosu::Color.argb(0x00_000000)`
		- `BLACK = Gosu::Color.argb(0xff_000000)`
		- `GRAY = Gosu::Color.argb(0xff_808080)`
		- `WHITE = Gosu::Color.argb(0xff_ffffff)`
		- `AQUA = Gosu::Color.argb(0xff_00ffff)`
		- `RED = Gosu::Color.argb(0xff_ff0000)`
		- `GREEN = Gosu::Color.argb(0xff_00ff00)`
		- `BLUE = Gosu::Color.argb(0xff_0000ff)`
		- `YELLOW = Gosu::Color.argb(0xff_ffff00)`
		- `FUCHSIA = Gosu::Color.argb(0xff_ff00ff)`
		- `CYAN = Gosu::Color.argb(0xff_00ffff)`
	- 实例属性
		- `alpha ⇒ Integer`，`red ⇒ Integer`，`blue ⇒ Integer`，`green ⇒ Integer`：获取 4 种分量（Alpha 为透明度，ff 表示不透明）
		- `hue ⇒ Float`：色调（范围为 [0.0, 360]）
		- `saturation ⇒ Float`：饱和度（范围为 [0.0, 1.0]）
		- `value ⇒ Float`：获取明亮（范围为 [0.0, 1.0]）
	- 创建颜色
		- `.argb(*args) ⇒ Color`：与 `Color.new` 等价，但其名称显示表示参数；`.rgba(*args) ⇒ Color`：
		- `.from_ahsv(a, h, s, v) ⇒ Color`：HSV（`Hue`色调，`Staturation`饱和度，`Value`明亮度）和 RGB 类似，也是一种颜色标准；`.from_hsv(h, s, v) ⇒ Color`：根据 HSV 创建**不透明**颜色
		- `#initialize(*args) ⇒ Color constructor`：
	- 实例方法
		- `argb ⇒ Integer (also: #to_i)`：
		- `dup ⇒ Color`：获取颜色副本
		- `gl ⇒ Integer`：返回适合 OpenGL 调用的颜色的 32 位表示形式


### Gosu::Font ###

Font 可用于非常灵活地在窗口对象上绘制文本；大型文本应使用 `Gosu::Image.from_text()`

!!! note "Gosu::Font"
	- 实例属性：`height ⇒ Integer`，`name ⇒ String`：字体 宽，高；readonly
	- 绘制文本：
		- `draw_text(text, x, y, z, scale_x = 1, scale_y = 1, color = 0xff_ffffff, mode = :default) ⇒ void`：绘制文本，左上角位于 (x,y)
		- `draw_text_rel(text, x, y, z, rel_x, rel_y, scale_x = 1, scale_y = 1, color = 0xff_ffffff, mode = :default) ⇒ void`：
		- `draw_markup(markup, x, y, z, scale_x = 1, scale_y = 1, color = 0xff_ffffff, mode = :default) ⇒ Object`
		- `draw_markup_rel(markup, x, y, z, rel_x, rel_y, scale_x = 1, scale_y = 1, color = 0xff_ffffff, mode = :default) ⇒ Object`：
	- 实例方法：
		- `[]=(character, image) ⇒ void`：覆盖字符的图像？
		- `initialize(height, **options** = {}) ⇒ Font constructor`：从 系统字体 或 文件 加载字体
			- `:name (String)` 系统文字名 或 `TrueType Font (TTF)`文件的路径（FFT路径至少包含一个 `/` 或 `.`，用以区分 系统字体）
			- `:bold (bool)`，`:italic (bool)`，`:underline (bool)`，`:retro (bool)`：粗体，斜体，下划线，复古渲染
		- `text_width(text, scale_x = 1) ⇒ Integer`：返回单行文本的宽度
		- `markup_width(markup, scale_x = 1) ⇒ Object`：与 `text_width` 类似

### Gosu::Song ###

歌曲不如样本灵活，因为一次只能播放一首，**没有 平移 或 速度控制**

!!! note "Gosu::Song"
	- 类属性：
		- `.current_song ⇒ Gosu::Song?`：返回当前正在播放的歌曲（即便已经暂停），没有则返回 `nil`；readonly
	- 实例属性：
		- `#volume ⇒ Float`：歌曲的播放音量
	- 实例方法：
		- `#initialize(filename) ⇒ Song constructor`：初始化歌曲
			- 重载 (window, filename) ⇒ Song
		- `#pause ⇒ void`：暂停歌曲
		- `#paused? ⇒ true, false`：判断歌曲是否暂停了
		- `#play(looping = false) ⇒ void`：播放歌曲
		- `#playing? ⇒ true, false`：判断歌曲是否在播放
		- `#stop ⇒ void`：如果当前歌曲正在播放，则停止

### Gosu::GLTextInfo ###

保存有关图像的基础 OpenGL 纹理 和 UV 坐标的信息

可以从某些图像中检索，以便在 OpenGL 操作中使用它们

!!! note "Gosu::GLTextInfo"
	- 实例属性：
		- `#top ⇒ Float readonly`，`#bottom ⇒ Float readonly`：上，下坐标
		- `#left ⇒ Float readonly`，`#right ⇒ Float readonly`：左，右坐标
		- `#tex_name ⇒ Integer readonly`：OpenGL 纹理(`texture`) id

### Gosu::TextInput ###

文本输入是一个不可见的对象，它使用操作系统的输入管理器处理输入

此类纯粹是后端的，即不附带 GUI


!!! note "Gosu::TextInput"
	- 实例属性：
		- `caret_pos ⇒ Integer`：编辑插入符号的位置（光标位置）
		- `selection_start ⇒ Integer`：当前所选文本的起始位置
		- `text ⇒ String`：用户键入的文本
	- 实例方法：
		- `delete_backward ⇒ Object`，`delete_forward ⇒ Object`：删除当前所选内容 或 上一个/下一个 字符
		- `filter ⇒ String`：该方法是一个可重写的过滤器，适用于所有新输入的文本
		- `insert_text(str) ⇒ Object`：替换当前的选择（如果有的话），并在当前光标位置插入给定的字符串
 
### Gosu::Sample ###

样本是完全加载到内存中的短声音，可以一次播放多次，并提供非常灵活的播放参数。将样本用于所有非音乐的内容

!!! note "Gosu::Sample"
	- 实例方法
		- `initialize(filename) ⇒ Sample`：从本地加载Sample
			- 重载 (window, filename)
		- `play(volume = 1, speed = 1, looping = false) ⇒ Channel`：播放不可平移的样本
		- `play_pan(pan = 0, volume = 1, speed = 1, looping = false) ⇒ Channel`：播放可平移的样本

### Gosu::Channel ###

`Gosu::Sample.play()` 返回一个通道，该通道表示正在播放的声音

此对象用于动态停止声音，或检查它们是否已结束

!!! note "Gosu::Channel"
	- 实例属性
		- `pan ⇒ Float`：平移量；writeonly
		- `speed ⇒ Float`：播放速度；writeonly
		- `volume ⇒ Float`：设置播放音量（范围：[0.0, 1.0]）；writeonly
	- 实例方法
		- `pause ⇒ void`：暂停
		- `paused? ⇒ true, false`：是否暂停了
		- `resume ⇒ void`：恢复播放
		- `playing? ⇒ true, false`：是否正在播放
		- `stop ⇒ void`：停止播放


