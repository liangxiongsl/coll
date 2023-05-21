
[Nokogiri](https://nokogiri.org/)


!!! note "Nokogiri 的功能"
	- 用于 XML、HTML4 和 HTML5 的 DOM 解析器
	- 适用于 XML 和 HTML4 的 SAX 解析器
	- 适用于 XML 和 HTML4 的推送解析器
	- 通过 XPath 1.0 进行文档搜索
	- 通过 CSS3 选择器进行文档搜索，带有一些类似 jquery 的扩展
	- XSD 架构验证
	- XSLT 转换
	- 用于 XML 和 HTML 文档的“生成器”DSL

!!! 安装
	`gem install nokogiri`

!!! note "使用 css 或 xpath 选择器处理 html"
	- css选择器：
		- 标签选择器 `p`, `div`, `span`：根据标签名匹配元素
		- 类选择器 `.my-class`：根据 class 属性匹配元素
		- ID 选择器 `#my-id`：根据 id 属性匹配元素
		- 属性选择器 `[attr=value]`：根据属性名称和属性值匹配元素
		- 子元素选择器 `parent > child`：选择父元素下的直系子元素
		- 后代元素选择器 `ancestor descendant`：选择祖先元素下的所有后代元素
		- 伪类选择器 `:hover`：选择特定的元素状态或行为
	- xpath
	- Nokogiri css 或 xpath 选择器方法
		- css(selector)：通过 CSS 选择器选择元素
		- at_css(selector)：仅查找第一个匹配的元素，等效于 css(selector).first
		- xpath(selector)：通过 XPath 表达式选择元素
		- at_xpath(selector)：仅查找第一个匹配的元素，等效于 xpath(selector).first
		- search(selector)：查找匹配的所有元素，可接收 CSS 选择器或 XPath 表达式
		- []：返回元素的属性值，例如，element['href'] 用于返回元素的 href 属性值。
		- `.text`：
		- `.content`：


