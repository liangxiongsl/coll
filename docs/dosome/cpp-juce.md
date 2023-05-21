
!!! abstract "[tutorial](https://juce.com/learn/tutorials/)"
	- `Getting Started`
	- `Audio`
		- 构建音乐播放器：读取音频文件（如：`wav`，`aiff`，`Ogg-Vorbis`）；向音乐播放器添加更多 GUI 控件（如：播放，暂停）
		- 处理音频输入：捕获音频输入，对其进行处理并将其传递给音频输出
		- 循环播放音频：
			- 播放和循环存储在 `AudioSampleBuffer` 中的音频；这是操作录制的音频数据的采用应用程序的有用基础？
			- 使用线程安全技术播放和循环存储在 `AudioSampleBuffer` 中的音频；介绍 后台线程加载音频数据的技术
		- 回执音频波形：`AudioThumbnail` 类
		- 管理音频设备：`AudioDeviceManager` 类
	- `Synth`（合成器）
		- 构建白噪声发生器：创建能输出一些声音的基本音频应用
		- 控制音频电平：将用户控件添加到音频应用，添加滑块以运行用户调整噪声发生器的级别
		- 使用分贝控制音频电平：
		- 构建正弦波合成器：使用正弦波合成器合成基本的音乐音调，让用户从图形界面修改音调的音高
		- 构建 `MIDI` 合成器：实现相应 `MIDI` 输入的复音正弦波合成器
		- 波表合成：优化合成器振荡器；使用波表管理正弦波振荡器的状态，并将数据写入音频输出
	- `MIDI`（音乐数字接口）
		- 创建 `MIDI` 数据：生成 `MIDI` 数据，以便控制外部合成器和设备
		- 处理 `MIDI` 事件：从外部源处理 `MIDI` 数据；键盘事件
		- 构建多弦合成器：`MPE` 标准的基础知识；实现 `MPE` 的综合器
		- `MPE` 区域：了解 `MPE` 标准中定义的区域概念进而区域布局约定
	- `plugins`
		- `plug-in` 参数
		- 保存和装载 `plug-in` 状态：管理插件参数的一个优雅精致的方式
		- 为插件配置正确的 `bus` 布局：展示如何处理音频改变其输出级使用分贝的规模
		- 层叠 `plug-in` 效果：使用 `AudioProcessorGraph` 的菊花链音频处理器或插件来创建通道带；在插件和独立的应用程序上下文中使用 `AudioProcessorGraph`
	- `DSP`（数字信号处理）
		- 介绍 `DSP`：探索数字信号处理和音频缓冲区操作的领域；了解 `JUCE DSP` 模块的基础知识，以及如何在自己的音频应用程序和插件中加入其类
		- 通过波形 `waveshaping` 和卷积 `convolution` 添加失真 `distortion`：通过波浪整形产生谐波失真，为合成器的声音增加砂砾。学习卷积的基础知识，检索脉冲响应中包含的声音特性
		- 创建一个模型字符串延迟线：通过物理建模来实现一个真实的弦模型。通过加入延迟线，在立体声声场中创建复杂的回声模式
		- 使用 `SIMDRegister` 类进行优化：利用处理器的并行性执行单指令多数据计算；在不引入并发的情况下优化您的音频应用程序
		- 快速傅里叶变换 `FFT`：通过使用 `DSP` 模块的 `FFT` 类将输入的音频数据显示为频谱图；理解使用快速傅立叶变换的好处
		- 实时可视化信号的频率：学习如何通过使用 `DSP` 模块的FFT类将传入的音频数据显示为频谱分析器；理解使用窗口功能的好处
	- **`Graphics`**
		- 应用程序窗口：使用可调整的窗口创建基本的 GUI 应用
		- 主组件：通过添加一个 内容组件 `content component`，以添加不同图形要素
		- 图形类：为应用程序添加 颜色，文字，行 以及 其他几何形状
		- 动画的几何形状：创建动画；`AnimatedAppComponent` 类
		- 建立一个 `OpenGL` 应用程序：使用高性能渲染器 OpenGL 在音频应用程序和插件中呈现美丽的 2D 和 3D 图形
	- `Interface Design`
	- `Mobile`
	- `Utility Classes`

!!! abstract "api"
	- [类名单](https://docs.juce.com/master/index.html)，[模块](https://docs.juce.com/master/modules.html)

###  ###


### start ###


JUCEApplication， Component， AudioAppComponent， AnimatedAppComponent， OpenGLAppComponent， AudioProcessor， AudioProcessorEditor

!!! note "juce支持的项目类型"
	- `Application`
		- `GUI Application`
			- `Audio Applicatio`
			- `Animated Application`
			- `OpenGL Application`
		- `Audio Plugin`
		- `Command Line / Console Application`
	- `Library`
		- `Static Library`
		- `Dynamic Library`

??? note "juce支持的项目类型"
	```mermaid
	graph LR
	
	G((Application))
	subgraph "GUI"
		c(Audio Application)
		d(Animated Application)
		e(OpenGL Application)
	end
	G --> c
	G --> d
	G --> e
	G --> f(Audio Plugin)
	G --> g("Command Line / Console Application")
	
	
	L((Library))
	L --> a(Static Library)
	L --> b(Dynamic Library)	
	```


!!! note "1. GUI Application"
	- 项目初始文件为：
		- `Main.cpp`：含有派生自 `juce::JUCEApplication` 的孙子类，提供应用程序的窗口初始化代码
		- `MainComponent.h`：含有派生自 `juce::Component` 的孙子类 `MainComponent`，该类是抽象的
		- `MainComponent.cpp`：实现 `MainComponent.h` 中的 `MainComponent` 类
	- Audio Application：
		- `Main.cpp` 中的 `AudioApplication` 派生自 `JUCEApplication`
		- `MainComponent.h` 中的 `MainComponent` 派生自 `AudioAPPComponent` 抽象基类
			- `MainComponent` 不直接派生自 `Component`



!!! 白噪声发生器
	用到的类： **`AudioAppComponent`**, `AudioSourceChannelInfo`, `AudioBuffer`, `Random`
	
	- AudioAppComponent 生命周期
		- `prepareToPlay()`：音频处理之前调用
		- `releaseResources()`：音频处理完成时调用
		- **`getNextAudioBlock()`**：每次音频硬件需要新的音频数据块时调用
			- 涉及到 “计算机生成音频信息的原理”，“音频的通道样本”， “CD质量的采样率”，“缓冲块”...
	- `setAudioChannels()`：注册我们需要的输入和输出通道的数量；除法音频进程的启动
	- `shutdownAudio()`：关闭音频系统；通常在析构函数中执行


### Graphics ###

- 应用程序窗口：使用可调整的窗口创建基本的 GUI 应用
	- juce_gui_basics >> windows
	- DocumentWindow 继承图：

	`ResizableWindow < TopLevelWindow < Component < DocumentWindow < (DialogWindow, MultiDocumentPanelWindow, StandaloneFilterWindow)`

- 主组件：通过添加一个 内容组件 `content component`，以添加不同图形要素
- 图形类：为应用程序添加 颜色，文字，行 以及 其他几何形状
- 动画的几何形状：创建动画；`AnimatedAppComponent` 类
- 建立一个 `OpenGL` 应用程序：使用高性能渲染器 OpenGL 在音频应用程序和插件中呈现美丽的 2D 和 3D 图形



