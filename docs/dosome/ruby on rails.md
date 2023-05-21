
!!! note "前言：关于如何创建网站"
	- `rails` 作为后端
	- [`Ember.js`](http://emberjs-cn.github.io/guides/getting-started/) 作为前端
	- [一些以 rails 作为后端的网站](https://www.iteye.com/news/5718-23-best-open-source-ruby-on-rails-application)


[文档](https://guides.rubyonrails.org/)，[api](https://api.rubyonrails.org/)


Rails是一个用Ruby编程语言编写的Web应用程序开发框架

Rails哲学包括两个主要的指导原则：

- `Don't Repeat Yourself`(`DRY`)：DRY 是软件开发的一个原则，它 声明“每一项知识都必须有一个单一的、明确的、权威的 系统内的代表性”。通过不一遍又一遍地写入相同的信息 同样，我们的代码更易于维护，更具可扩展性，并且错误更少
- `Convention Over Configuration`(`COC`)：Rails 对做很多事情的最佳方式有意见 Web 应用程序中的内容，并且默认为这组约定，而不是 要求您通过无休止的配置文件指定细节


!!! note "guide"
	0. [开始](https://guides.rubyonrails.org/getting_started.html)
	1. 模型：Active Record；migration；validation；callback；Active Record关联；查询接口；Active Model Basic
	2. 视图：Action View；布局和渲染；帮助程序；表单帮助程序
	3. 控制器：Action Controller；从外向内布线
	4. 其他组件：Active Support Core Extensions；Action Mailer Basics；Action Mailbox Basics；Action Text；Active Job Basics；Active Storage Overview；Action Cable Overview；Webpacker
	5. 深入挖掘：国际化；测试；安全；配置；命令行；Asset 管线；使用 JavaScript；初始化过程；自动加载和重新加载常量；Classic to Zeitwerk HOWTO；rails 缓存；将 Rails 用于仅限 API 的应用程序；Active Record 和 PostgreSQL；Active Record与多种数据库；Active Record加密
	6. Extending rails：创建插件；Rails on Rack；建和自定义 Rails 生成器和模板；Engines；Rails 中的线程和代码执行

```title="依赖库大全"
Using rake 13.0.6
Using concurrent-ruby 1.2.2
Using minitest 5.18.0
Using builder 3.2.4
Using erubi 1.12.0
Using racc 1.6.2
Using crass 1.0.6
Using rack 2.2.7
Using nio4r 2.5.9
Using websocket-extensions 0.1.5
Using bundler 2.4.12
Using marcel 1.0.2
Using mini_mime 1.1.2
Using date 3.3.3
Using timeout 0.3.2
Using public_suffix 5.0.1
Using bindex 0.8.1
Using msgpack 1.7.0
Using matrix 0.4.2
Using regexp_parser 2.8.0
Using io-console 0.6.0
Using method_source 1.0.0
Using thor 1.2.1
Using zeitwerk 2.6.8
Using rexml 3.2.5
Using rubyzip 2.3.2
Using websocket 1.2.9
Using sqlite3 1.6.2 (x64-mingw-ucrt)
Using i18n 1.13.0
Using tzinfo 2.0.6
Using nokogiri 1.14.3 (x64-mingw-ucrt)
Using rack-test 2.1.0
Using puma 5.6.5
Using sprockets 4.2.0
Using websocket-driver 0.7.5
Using net-protocol 0.2.1
Using addressable 2.8.4
Using bootsnap 1.16.0
Using reline 0.3.3
Using activesupport 7.0.4.3
Using xpath 3.2.0
Using selenium-webdriver 4.9.1
Using tzinfo-data 1.2023.3
Using net-imap 0.3.4
Using net-pop 0.1.2
Using net-smtp 0.3.3
Fetching loofah 2.21.1
Using irb 1.6.4
Using rails-dom-testing 2.0.3
Using globalid 1.1.0
Using activemodel 7.0.4.3
Using capybara 3.39.0
Using webdrivers 5.2.0
Using activejob 7.0.4.3
Using activerecord 7.0.4.3
Using mail 2.8.1
Using debug 1.8.0
Installing loofah 2.21.1
Using rails-html-sanitizer 1.5.0
Using actionview 7.0.4.3
Using actionpack 7.0.4.3
Using jbuilder 2.11.5
Using actioncable 7.0.4.3
Using activestorage 7.0.4.3
Using actionmailer 7.0.4.3
Using railties 7.0.4.3
Using sprockets-rails 3.4.2
Using actionmailbox 7.0.4.3
Using actiontext 7.0.4.3
Using importmap-rails 1.1.6
Using stimulus-rails 1.2.1
Using turbo-rails 1.4.0
Using web-console 4.2.0
Using rails 7.0.4.3
```


###  ###


|File/Folder    |Purpose|
|:-:|:-:|
|app/   |Contains the controllers, models, views, helpers, mailers, channels, jobs, and assets for your application. You'll focus on this folder for the remainder of this guide.|
|bin/   |Contains the rails script that starts your app and can contain other scripts you use to set up, update, deploy, or run your application.|
|config/        |Contains configuration for your application's routes, database, and more. This is covered in more detail in Configuring Rails Applications.|
|config.ru      |Rack configuration for Rack-based servers used to start the application. For more information about Rack, see the Rack website.|
|db/    |Contains your current database schema, as well as the database migrations.|
|Gemfile|
|Gemfile.lock   |These files allow you to specify what gem dependencies are needed for your Rails application. These files are used by the Bundler gem. For more information about Bundler, see the Bundler website.|
|lib/   |Extended modules for your application.|
|log/   |Application log files.|
|public/        |Contains static files and compiled assets. When your app is running, this directory will be exposed as-is.|
|Rakefile       |This file locates and loads tasks that can be run from the command line. The task definitions are defined throughout the components of Rails. Rather than changing Rakefile, you should add your own tasks by adding files to the lib/tasks directory of your application.|
|README.md      |This is a brief instruction manual for your application. You should edit this file to tell others what your application does, how to set it up, and so on.|
|storage/       |Active Storage files for Disk Service. This is covered in Active Storage Overview.|
|test/  |Unit tests, fixtures, and other test apparatus. These are covered in Testing Rails Applications.|
|tmp/   |Temporary files (like cache and pid files).|
|vendor/        |A place for all third-party code. In a typical Rails application this includes vendored gems.|
|.gitattributes |This file defines metadata for specific paths in a git repository. This metadata can be used by git and other tools to enhance their behavior. See the gitattributes documentation for more information.|
|.gitignore     |This file tells git which files (or patterns) it should ignore. See GitHub - Ignoring files for more information about ignoring files.|
|.ruby-version  |This file contains the default Ruby version.|

!!! step
	- [安装ruby](https://www.ruby-lang.org/en/documentation/installation/)，[安装SQLite3](https://www.sqlite.org/)
	- 安装rails：`gem install rails`
	- 创建app：`rails new <工程名>`
	- 运行：`ruby ./bin/rails server`
	- 路由：在 `config/routes.rb` 文件中的 `Rails.application.routes.draw` 进行配置
		- get方法：`get "访问的资源路径", to: "Controller名#action名"`
		- `root "Controller名#action名"`：相当于 `get "/", to: "Controller名#action名"` 的简写
		- `resources :Controller名`：为该 Controller 配置 rails 默认的 action，如：`index`，`show`类；`new`s`create`；`edit`，`update`；`destroy`
	- 自动导入特性：除了rails的模块外，我们仅需对以下两种情况进行`require`导入：
		- 导入 `lib` 目录下的文件
		- 导入 `Gemfile` 文件中具有 `require: false` 的 `gem` 依赖
	- 创建 `controller`：
		- 执行命令：`ruby bin/rails generate controller <控制器名> <action名> [--skip-routes]`
		- 主要能创建 controller对应的文件 `app/controllers/<控制器名>_controller.rb`，view对应的文件 `app/views/<控制器名>/<action名>.html.erb` 两个文件；并且会自动对路由进行配置（资源名为：`控制器名/action名`）
		- 另外，会创建 `test/controllers/<控制器名>_controller_test.rb`，`app/helpers/<控制器名>_helper.rb`
		- 注：我们创建的 `XxxController` 会继承自 `ApplicationController`，但是我们无需做 `require "application_controller"` 类似的导入，因为rails帮我们做了
			- 另外，Controller名注意首字母大写，并且是复数
	- 创建 `model`：
		- 如：`bin/rails generate model <model名> title:string body:text`
		- 主要为了创建 `app/models/<model名>.rb`，`db/migrate/<timestamp>_create_articles.rb`
		- 此外会创建文件 `test/models/_test.rb` ...
		- 注：rails会给每个model对应的数据库表添加 `id`，`created_at`，`updated_at` 属性
		- 数据库迁移：`ruby bin/rails db:migrate`
			- 相关命令：`rails generate migration <migration_name>`，`bin/rails db:migrate VERSION=<version>`
		- 使用`model`与数据库交互：
			- 打开控制台：`ruby bin/rails console`
			- 创建model对象：`<model名>.new(...)`
			- model对象保存：`.save`
		- model的类方法：
			- `all`：返回所有实例；`find <id>` 查找特定实例
	- 编辑view：
		- `view` 位于 `app/views/<Controller名>/<action名>.html.erb`（注意到每个视图都对应于一个 特定Controller的某个特定action）
		- 两种 erb tag：`<% %>`，`<%= %>`
		- `<model名>_url`，`<model名>_path` 将获取对应模型的 url 或 资源路径
	- CRUD：接下来介绍 rails 默认的 action（前提是路由中对该 Controller 使用了 `resources` 方法）
		- `new`：用于实例化空的 model，以便在其渲染的 erb 文件中使用
			- 可以借助 [`Form Builder`](https://guides.rubyonrails.org/form_helpers.html)（`form_with`）
			- [强参数](https://guides.rubyonrails.org/action_controller_overview.html#strong-parameters)
			- 验证：model 中声明 `validates` 可以应用于 model 中某些属性值的验证，而且该验证在保存数据之前执行，如果检查失败，则不保存，添加到 model 对象的 `errors` 属性中
		- `create`：用于实例化带值的 model，并用于存储到数据库中，若存储失败，可以 `redirect_to` 到成功页面，或用 `render` 来显示某些错误（[错误码参加此链接](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/422)）
			- 可以和 `/<model名s>/<model id>` 匹配
	- [使用 render 渲染 partials](https://guides.rubyonrails.org/layouts_and_rendering.html#using-partials)


```
命令 ruby bin/rails ...

generate (contoller, model)

db:migrate

console

routes
```


!!! question
	- 如何保持程序健壮性：即便中途添加类的属性也不会牵扯到过多的改动
		- 可能遇到的问题：添加类属性后，需要给调用的构造函数添加参数，可能还要给model添加 `validate` 或 方法

[参考](https://guides.rubyonrails.org/index.html)

### 1.Models ###

#### Active Record Basics ####

!!! note "概念"
	- `Active Record`，其对象携带持久化数据和行为
	- `ORM`(Object Relational Mapping)，是一种将应用程序的富对象与 RDBMS 中的表连接起来的技术

!!! note "`Active Record` 作为 ORM 框架，其提供的机制："
	- 表示 models 和它们的数据
	- 表示 models 之间的关联
	- 表示 models 之间的继承关系
	- 持久化到数据库之前，验证(`validate`) models 的合法性
	- 以面向对象方式执行数据库操作

!!! note "Active Record 的配置约定"
	- 命名
		- model 类(`model/class`)以驼峰命名(`CamelCase form`)，对应的表(`table/schema`)以 `snack_case form`命名
		- rails具有强大的复数化机制：model 对应的表会被 rails 复数化，如：Article -> articles，LineItem -> line_items，Mouse -> mice
		- 注：第一次创建表由 rails 负责
	- 架构(`schema`)
		- foreign key：按照 `singularized_table_name_id` 的模式命名，即 `<model名>_id`
		- primary key：默认情况下，以 `id` 作为主键；使用 `migration` 创建表时，将自动创建此列
		- 还有一些添加到 Active Record 的可选列名
			- `created_at` - 首次创建记录时的时间
			- `updated_at` - 最后一次更新记录的时间
			- `lock_version` - 添加 [`optimistic locking`](https://api.rubyonrails.org/v7.0.4.2/classes/ActiveRecord/Locking.html) 到model
			- `type` - 制定模型使用 [`Single Table Inheritance`](https://api.rubyonrails.org/v7.0.4.2/classes/ActiveRecord/Base.html#class-ActiveRecord::Base-label-Single+table+inheritance) 单表继承
			- `(association_name)_type` - 存储 [`polymorphic associations`](https://guides.rubyonrails.org/association_basics.html#polymorphic-associations) 多态性关联
			- `(table_name)_count` - 存储对象关系的数量


!!! note "创建 Active Record"
	- 直接继承 `ApplicationRecord` 类
	- 注：`app/models/` 下除了有 `application_record.rb` 外，还有类似 `<model名>.rb` 的文件，这些文件不显式表示这些 model 的数据构成，而应该在 `db/migrate/` 下会记录model数据结构的变动


!!! note "覆盖命名约定"
	- `ActiveRecord::Base` 定义了属性 `table_name` 和 `primary_key`，表示当前 model 对应的数据库表名，及其主键名
	- 而自定义的 model （位于 `app/models/` 目录下）应该继承 `ApplicationRecord`， `ApplicationRecord` 继承了 `ActiveRecord::Base`，因而自定义 model 类在定义时可以将 `table_name` 和 `primary_key` 覆盖
	- 如果这么做，则必须手动自定义托管类名夹具，[参考](https://guides.rubyonrails.org/active_record_basics.html)

!!! note "CRUD"
	- `create`：有两种方式保存数据：
		- 通过类方法 `create` 保存并返回 model 对象，其参数由构造方法 `new` 相同
		- 通过构造方法 `new` 创建 model 对象，再使用实例方法 `save` 保存对象
		- 注：Active Record 对象还可以用 哈希 或 块 来创建，前者较为常用
	- `Read`：均通过实例方法来执行查询：
		- `all`：返表内所有记录
		- `first`：返回第一个记录
		- `find_by`：通过哈希查找首个匹配的记录，如：`User.find_by(name: 'David')`
		- `where`：通过哈希查找所有匹配的记录
		- `order`：通过哈希指定记录集合的排序方式
		- [详细参考（rails提供大量查询api）](https://guides.rubyonrails.org/active_record_querying.html)
	- `update`：
		- 单个记录更新有两种方式：首先用 `find_by` 查询到特定对象，保存到内存中
			- 调用实例方法 `<属性名>=` 方法修改属性，然后调用 `save`
			- 调用示例方法 `update`，参数为一个哈希
		- 更新所有记录：
			- 类方法 `update_all`，参数为字符串，类似于 sql 中 where 子句的内容
			- 类方法 `update(:all, <hash>)` 也是更新所有记录
	- `delete`：
		- 删除单个记录：首先调用类方法 `find_by` 查询指定对象，保存到内存中，再调用示例方法 `destroy`
		- 删除多个记录：
			- 类方法  `destroy_by`，参数为哈希
			- 类方法 `destroy_all`，删除所有记录

!!! note "数据验证 `validate`"
	- 在 `app/models/` 内的 model 文件中声明 `validate`，其参数为 `属性名tag, 哈希`，如：`validates :name, presence: true`
	- 这意味着在对 model 执行 `save` 或 `update` 操作时，会拒绝执行规定过的非法行为，甚至报错
	- 注：类似 `save` 和 `update` 方法以尝试保存或更新数据时，方法会返回 bool 值；而 `save!` 和 `update!` 在执行不超过时报错
	- [更多内容](https://guides.rubyonrails.org/active_record_validations.html)


!!! note "回调 `callback`"
	- Active Record callback 允许您将代码附加到 model 的生命周期
	- 可以在执行 `create`，`update`，`destroy` 时调用代码
	- [详见该链接](https://guides.rubyonrails.org/active_record_callbacks.html) 

!!! note "迁移 migration"
	- Rails 提供了一种特定于域的语言 `domain-specific language`，用于管理名为 `migrations` 的数据库`scheme`
	- migration 被存储在文件中，可以使用rake针对Active Record支持的任何数据库执行
	- `ruby bin/rails db:migrate` 用于实际创建表
	- `ruby bin/rails db:rollback` 用于回滚
	- [详见此链接](https://guides.rubyonrails.org/active_record_migrations.html)

#### Migrations ####

!!! note "1.migration 概述"
	- 迁移是一种随实践推移以一致的方式更改数据库的方法；它们使用了 ruby DSL，因而不用手动编写 SQL，允许架构和修改独立于数据库
	- 每次迁移可被视为数据库的新版本
	- 一个 架构开始时没有任何内容，每次迁移都会对其进行修改以 添加，删除 表 / 列 / 条目
	- 默认情况下，rails 会使用事务包裹 `db/migrate/` 下的迁移文件的 `change` 方法下 `create_table`，`drop_table` 等 DDL 语句；而方法 `disable_ddl_transaction!` 会取消这种事务包裹（需要注意的是，使用 disable_ddl_transaction! 不建议在非灾难情况下用于生产环境，因为这可能会导致不能撤消的更改）
	- `reversible` 方法可用于 `change` 方法下，其接收两个块，一个用于执行操作，另一个用于撤销操作；在迁移上运行 `ruby bin/rails db:migrate` 将运行这些操作。在迁移上运行 `ruby bin/rails db:rollback` 将运行相应的撤销操作，[例如(reversible)](https://pastebin.com/tzawcLaX)
		- 另一种方法：在 `up` 方法下定义用于执行的操作，在 `down` 方法下定义用于撤销的操作

		```ruby
		// 方法1
		class AddEmailToUsers < ActiveRecord::Migration[6.1]
		  def change
		    reversible do |dir|
		      dir.up { add_column :users, :email, :string }
		      dir.down { remove_column :users, :email }
		    end
		  end
		end
		// 方法2
		class AddEmailToUsers < ActiveRecord::Migration[6.1]
		  def up
		    add_column :users, :email, :string
		  end
		  def down
		    remove_column :users, :email
		  end
		end
		```

!!! note "2.创建迁移文件"
	- 迁移文件以 `YYYYMMDDHHMMSS_<do_something>.rb` 命名
		- `<do_something>` 是以 **snack 形式命名**，如：`create_articles`，`add_status_to_articles`，`remove_status_from_articles`
		- 迁移文件有一个类，该类对应于 `<do_something>`，但是以 **驼峰形式命名**，如：`CreateArticles`，`AddStatusToArticles`，`RemoveStatusFromArticles`
	- 迁移文件提供的命令：
		- `add_column`，`remove_column`，`add_index`，`create_table`，`add_reference`，`create_join_table`
	- 迁移文件提供的列类型：
		- `references`
		- `string`，`text`
		- `timestamps`
		- `decimal`
	- 创建独立的迁移文件：
		1. `ruby bin/rails generate migration {==<DoSomething>==}`：创建空的迁移文件
		2. `ruby bin/rails generate migration Add{==<ColumnName>==}To{==<TableName>==} {==<column_name>:<type>==}[:index]`：为表添加某一列；可选择性添加索引 `index`
			- 迁移文件的主要内容：`add_column :<table_name>, :<column_name>, :<type>`
			- 如果添加了索引：`add_index :<table_name>, :<column_name>`
		3. `ruby bin/rails generate migration Remove{==<ColumnName>==}To{==<TableName>==} {==<column_name>:<type>==}`：为表删除某一列
			- 迁移文件的主要内容：`remove_column :<table_name>, :<column_name>, :<type>`
		4. `ruby bin/rails generate migration AddDetailsTo{==<TableName>==} ({==<column_name>:<type>==})*`：为表添加多列
		5. `ruby bin/rails generate migration Create{==<TableName>==} ({==<column_name>:<type>==})*`：创建表
		6. `ruby bin/rails generate migration Add{==<RefName>==}RefTo{==<TableName>==} {==<column_name>==}:references`：添加外键
			- `add_reference :{==<TableName>==}, :{==<RefName>==}, foreign_key: true`
		7. `ruby bin/rails generate migration CreateJoinTable{==<TableName1>==}{==<TableName2>==} {==<table_name1>==} {==<table_name2>==}`：生成连接表 `join_table`
			- `create_join_table :{==<table_name1>==}, :{==<table_name2>==} do { |t| ... }`
	- 利用生成器创建迁移文件：
		- 生成器有：`model`, `resource`, `scaffold`
		- 如 model 生成器：`ruby bin/rails generate model {==<TableName>==} ({==<column_name>:<type>==})*`：创建 model，并为其创建迁移文件
	- 传递修饰符：
		- 创建独立的迁移文件时，可以用大括号 `{}` 括起修饰符
		- 如：
		
		```ruby
		ruby bin/rails generate migration AddDetailsToProducts 'price:decimal{5,2}' supplier:references{polymorphic}
		```
		
		```ruby
		class AddDetailsToProducts < ActiveRecord::Migration[7.0]
		  def change
		    add_column :products, :price, :decimal, precision: 5, scale: 2
		    add_reference :products, :supplier, polymorphic: true
		  end
		end
		```

!!! 概念
	- 连接表：在 RDB 中对表进行关联并存储相关数据的技术，可以用于解决两个表的**多对多**关系（比如：博客中 文章 与 标签 之间的关系）
	- 连接表实则是构造一个中间表 R ，假设要为表 A 和 B 构造多对多大的映射关系，那么该表有三个字段：记录 id，表 A 的 id，表 B 的 id；每一条连接表的记录相当于一条边，构成两张表的二分图
	- 连接查询：如：查询 A 表 `id=?` 对应的所有 B 表元素： `select B.name from A join R on A.id=R.A_id join B on R.B_id=B.id where A.id={==?==}`

!!! note "3.编写迁移文件"
	- 创建表：可以通过 `create_table` 创建表，但是大部分时候都是通过 `model`, `resource`, `scaffold` 生成器来创建表
		- `create_table` 的基本参数是 `:<表名>`，一个块（其中的迭代器包含以 数据类型命名的方法，每个这种方法都对应一个字段）
		- `create_table` 接收的其他参数有 `options: "字符串"`，`id: <bool>` 等
		- 参数块内的迭代器的参数：`:<字段名>`(基本参数)，`index:`，`:comment`（对某一列的注释？） 等
	- 创建连接表：迁移方法 `create_join_table` 可以创建一个 `HABTM`(has and belong to many)连接表
		- 基本参数：`:<表As>`，``:<表Bs>``；默认创建一个具有 `A_id` 和 `B_id` 列，名为 `A_Bs` 的表；这些属性默认 `null: false`
		- 其他参数：`column_options: { null: <bool>, ... }`，`table_name: :<表名>`
		- 特殊参数：允许接收一个块当作参数（类似于 `create_table` 中的块），但必须包含最基本的两个字段，即 `A_id` 和 `B_id`
	- 更改表：`change_table`，基本参数是 `:<表名>`，并且接收一个块，块迭代器包含的方法：
		- `remove`：接收多个列表名参数，用于删除多个列字段
		- `rename`：有两个参数：`<列原名>`，`<列的新名字>`
		- `<数据类型名>`：对应于 `create_table` 的块迭代器的方法
	- 更改列：`change_column`，提供类似于 `add_column` 和 `remove_column` 的迁移方法
		- `change_column_null`
		- `change_column_default`
	- 列修饰符：创建 或 更改列时可以使用的修饰符：
		- `comment`：提那家注释
		- `collation`：指定 string 或 text 列
		- `default`：允许在列上设置默认值（请注意，如果您 正在使用动态值（例如日期），则仅计算默认值 第一次（即应用迁移之日）。用 nil 为 NULL）
		- `limit`：设置 `string` 列的最大字符数 或 `text/binary/integer` 列的最大字节数
		- `null`：指定是否允许值为 null 的列
		- `precision`：指定 `decimal/numeric/datetime/time` 列的精度
		- `scale`：指定 `decimal/numeric` 列的小数点后的位数
		- 注：方法 `add_column` 或 `change_column` 没有用于索引的选项，而需要使用 `add_index`；null 和 default 不能通过命令行指定
	- `add_reference` 或 `add_belongs_to`；`remove_reference`
		- 基本参数：`:表名`，`:<reference>`
		- [参考更多](https://api.rubyonrails.org/v7.0.4.2/classes/ActiveRecord/ConnectionAdapters/SchemaStatements.html#method-i-add_reference)
	- `add_foreign_key`：添加外键
		- 基本参数：`:<表A>, :<表B>`，仅当 A 与 B 的关系是 多对一（默认会在 A 表中创建 B_id 字段）
		- 其他参数：`column: <A表中的(外键)字段名>`，`primary_key: <B表的主键名>`
		- 特殊参数：`name`，`on_delete`，`if_not_exists`，`validate`，`deferrable`
	- `remove_foreign_key`：删除外键
		- 如：`remove_foreign_key :<表名>, column: :<外键列名>`
	- 当帮手不够时？您可以使用 execute 执行任意 SQL 的方法
		- [ActiveRecord::ConnectionAdapters::SchemaStatements](https://api.rubyonrails.org/v7.0.4.2/classes/ActiveRecord/ConnectionAdapters/SchemaStatements.html)，[ActiveRecord::ConnectionAdapters::TableDefinition](https://api.rubyonrails.org/v7.0.4.2/classes/ActiveRecord/ConnectionAdapters/TableDefinition.html)，[ActiveRecord::ConnectionAdapters::Table](https://api.rubyonrails.org/v7.0.4.2/classes/ActiveRecord/ConnectionAdapters/Table.html)
	- `change` 方法：是定义在 `ActiveRecord::Migration[7.0]` 的方法，用于重写，其中提供的操作有：
		- add_column
		- add_foreign_key
		- add_index
		- add_reference
		- add_timestamps
		- change_column_comment （必须提供 :from 和 :to 选项）
		- change_column_default （必须提供 :from 和 :to 选项）
		- change_column_null
		- change_table_comment （必须提供 :from 和 :to 选项）
		- create_join_table
		- create_table
		- disable_extension
		- drop_join_table
		- drop_table （必须提供块）
		- enable_extension
		- remove_column （必须提供类型）
		- remove_foreign_key （必须提供第二张桌子）
		- remove_index
		- remove_reference
		- remove_timestamps
		- rename_column
		- rename_index
		- rename_table
		- [参考](https://api.rubyonrails.org/v7.0.4.2/classes/ActiveRecord/ConnectionAdapters/SchemaStatements.html)
		- 注：
			- change_table 是可逆的（即可完全回滚），仅当块不调用 change， change_default 或 remove
			- remove_column 是可逆的，仅当在第三个参数中提供列类型 `:<type>`
	- `reversible`：如果复杂的迁移使得 `Active Record` 不知道如何回滚，那么可以在重写的 `change` 内使用 `reversible` 来指定 运行迁移时 以及 回滚时（还原时）执行的其他操作
		- `reversible` 参数为一个块，块迭代器有两个方法 `up` 和 `down`，分别对应 运行迁移时 和 回滚时 运行的操作
		- 块内可以执行 `execute` 对数据库进行操作
		- （可能会用到 ruby 的 `Here document` 语法，即 `<<-SQL <sql语句> SQL`）
		- 思考：迁移可能做一些完全不可逆转的事情，导致数据破坏，从而使得迁移不可逆；`ActiveRecord::IrreversibleMigration` 的作用是什么？
	- `up`，`down` 方法：前者用于告知 运行迁移时 的操作，而后者告知 回滚时 的操作；和 `change` 一样，都可以用来重写
	- 还原以前的迁移：`revert`，例如：
		- 导入要回滚的迁移文件：`require_relative "20121212123456_example_migration"`
		- 比如在 `change` 内部调用 `revert ExampleMigration`

!!! note "4.运行迁移"
	- `ruby bin/rails db:migrate` 会运行之前尚未运行过的所有迁移，并且运行这些迁移的 `change` 和 `up` 方法；除此之外该命令会吊桶 `db:schema:dump` 命令，以更新 `db/schema.rb` 文件（该文件匹配数据库的结构）
	- `ruby bin/rails db:migrate VERSION=<时间戳>`：该命令会运行指定版本及其之间版本的迁移（默认“向上迁移”，即只执行 `change` 和 `up`）
	- 回滚：`ruby bin/rails db:rollback`
		- 参数 `STEP=<num>`：回滚最后 `num` 次操作
	- `db:migrate:redo [STEP=<num>]`
	- `bin/rails db:setup`：创建数据库
	- `bin/rails db:drop`：删除数据库
	- `bin/rails db:reset`：删除数据库并重置，即 `drop` 和 `setup` 的结合
	- `bin/rails db:migrate:up [VERSION=<时间戳>]`：`up` 可改为 `down` 或 `change`
	- 在不同环境中运行迁移：`db:migrate` 提供参数 `RAILS_ENV=<env>`，`env` 默认是 `environment`
		- 注：有三种运行环境：`development`，`test`，`production`
	- 更改执行迁移时的输出：直接在迁移文件中调用这些方法即可：
		- [`suppress_messages`](https://api.rubyonrails.org/v7.0.4.2/classes/ActiveRecord/Migration.html#method-i-suppress_messages)：将块作为参数，并禁止显示块生成的任何输出
		- [`say`](https://api.rubyonrails.org/v7.0.4.2/classes/ActiveRecord/Migration.html#method-i-say)：获取消息参数并按原样输出。可以传递第二个布尔参数来指定是否缩进
		- [`say_with_time`](https://api.rubyonrails.org/v7.0.4.2/classes/ActiveRecord/Migration.html#method-i-say_with_time)：输出文本以及运行其块所花费的时间。如果块返回一个整数，则假定它是受影响的行数

!!! note "5.更改现有迁移"
	- 假设运行了错误的迁移文件或想反悔，那么不能仅仅编辑迁移文件再运行 `bin/rails db:migrate`
	- 而必须运行回滚命令 `bin/rails db:rollback`，如何再编辑迁移文件，最后运行 `bin/rails db:migrate`
	- 另外，如果要撤销之前部分或全部的迁移，创建新的迁移从而调用 `revert` 方法可能有用

!!! note "6. schema dumping"
	- rails 生成的 `db/schema.rb` 尝试捕获当前状态的数据库架构
	- [详见此链接](https://guides.rubyonrails.org/active_record_migrations.html#schema-dumping-and-you)


!!! note "7. 活动记录和引用完整性"


!!! note "8. 迁移和种子数据"
	- `db/seeds.rb` 内的代码会在执行 `db:seeds` 后执行，通常是用于构造数据库中的原始数据

!!! 旧迁移
	- `db/schema.rb` 或 `db/structure.sql` 是当前状态的快照数据库
	- `bin/rails db:migrate:status` 可以查看数据库中的表 `schema_migrations`（该表记录迁移文件的时间戳）


#### Validations ####


!!! note "1. 概述"
	- 验证用于提供一种机制，以保证数据保存到数据库之间满足合法性
	- 除了 rails 提供的 模型级验证 以外，还有其他三种验证方法：客户端验证，控制器级验证，数据库约束
	- 验证的执行顺序：
		- `client-side validations` $\to$ `controller-level validations` $\to$ `Model-level validations` $\to$ `native database constraints`
	- 验证的触发条件：`ApplicationRecord` 实例方法：
		- `create`，`create!`
		- `save`，`save!`
		- `update`，`update!`
		- 注：`bang` 版本的方法（有叹号 `!` 的方法）指的是执行失败则报错
		- 另外，`new_record?` 方法用于检查当前对象是否还未插入到数据库中，若返回 `false`，这意味着不能通过 `save` 将对象重复插入到数据库中
	- 跳过验证：`ApplicationRecord` 实例方法：
		- decrement!
		- decrement_counter
		- increment!
		- increment_counter
		- insert，insert!
		- insert_all，insert_all!
		- toggle!
		- touch，touch_all
		- update_all
		- update_attribute
		- update_column
		- update_columns
		- update_counters
		- upsert
		- upsert_all
		- save(validate: false)
	- 验证前判定是否合法
		- `valid?`，`invalid?`
	- `errors[]`：
		- 可以通过 `errors[:<attribute>]` 得到特定参数的验证错误消息**数组**

!!! note "2. 验证帮助程序"
	0. Active Record 提供了预定义的验证帮助程序，它们都接共有 `validate` 方法的两个选项：`:on`，`:message`
		- `:on` 的取值：`:create | :update`
	1. `acceptance`：它是 `validate` 方法的参数
		- 这通常用于“用户需要同意应用程序的服务条款”，“确认已阅读某些文本” 或 任何类似的内容
		- 参数 `accept: <列表>`：用于验证 `model` 对象的指定属性的值是否等于给定的列表的某个值；`<列表>`默认为 `['1', true]`
		- `:message` 参数的默认值：`"must be accepted"`
	2. `validates_associated` 方法：
		- 加入当前 model 与其他 model 相关联，应使用该方法对它们进行关联
		- 用法：`validates_associated  :<表名>`
		- 注：不能在关联表的两边都添加 `validates_associated` 方法，否则它们会互相调用以至于无线循环
		- `:message` 的默认值：`"is invalid"`
	3. `confirmation`：当需要有两个应接受的文本字段时，应该使用该帮助程序确保两个文本相同
		- 通常用于**两次验证** 邮箱地址 或 密码：`confirmation` 验证器会验证一个字段（如密码）是否和另一个字段（如密码确认）相同。如果两个字段相同，则验证通过；否则，则会添加一个错误，提示两个字段需要匹配
		- 用法：`confirmation: <bool>`
			- 如：`validates :password, confirmation: true` 表示字段 `password` 会与 `password_confirmation` 进行比较，如果不相同则返回一个错误
		- 参数 `case_sensitive: <bool>`：指定是否大小写敏感
		- `:message` 的默认值：`"doesn't match confirmation"`
	4. `comparison`：比较两个值，包含多个选项，每个选项都接受 值，过程 或 符号
		- `less_than`，`greater_than`，`equal_to `
		- `less_than_or_equal_to`，`greater_than_or_equal_to`
		- `other_than`
	5. `exclusion`：验证属性的值是否未包含在给定的设置
	6. `format`：测试属性的值是否与给定的**正则表达式**匹配，`:with`
	7. `inclusion`：验证属性的值是否包含在给定的集合中，`:in`
	8. `length`：验证属性值的长度，`:minimum`，`:maximum`，`:in`，`:is`，`:too_short`，`too_long`
	9. `numericality`：验证属性是否只有数值，`:only_integer`，`:greater_than`，...
	10. `presence`：验证属性是否不为空
	11. `absence`：是否不存在
	12. `uniqueness`：是否唯一
	13. `validates_with` 方法：将记录传递给单独的类进行验证，如：重写了 `validate` 的 `ActiveModel::Validator` 子类
	14. `validates_each` 方法：根据块验证属性，块接收 记录，属性名，属性值；可以做任意喜欢的事情来检查块中的有效数据


!!! note "3. 常见验证选项"
	1. `:allow_nil`：当属性为 `nil` 时，跳过验证
	2. `:allow_blank`：属性值为空（即：`nil`，空字符串等）跳过验证
	3. `:message`：验证失败时的消息
	4. `:on`：指定何时（生命周期）进行验证

!!! note "4. 严格验证"
	- 指定验证是严格的，并在对象非法时引发 `ActiveModel::StrictValidationFailed`
	- 用法：提供验证选项 `strict: <bool>` 或 `strict: <自定义异常>`

!!! note "5. 条件验证"
	0. 这种方法提供一种**谓词**的方式，在验证之前调用给定的方法进行过滤
	1. `:if :<?方法>` 或 `:unless :<?方法>`：仅当方法返回 true 或 false 时执行验证；该方法可以是 普通方法的tag，`Proc.new { |a| ... }`，lambda 表达式（`-> { ... }`）
	2. 分组条件验证：`with_options` 方法，让多个验证使用一个条件
	3. 组合验证条件：`:if` 或 `:unless` 可以用以 `[]` 的形式将多个条件放在一起（相当于用 `&&` 连接多个条件）

!!! note "6. 自定义验证"
	1. 自定义验证器：继承 `ActiveModel::Validator` 类，并实现 `validate(record)` 方法（代码位于 `app/models/xxx/rb`）；`record.erros.add` 方法对应“验证失败”的逻辑；通常和 `validates_with` 方法一起使用
		- 实现 `ActiveModel::EachValidator` 的 `validate_each(record, attribute, value)`；每次验证器触发时都调用
	2. 自定义方法：

!!! note "7. 验证错误"
	0. `valid?` 和 `invalid?` 方法用于检查有效性；而 [`errors`](https://api.rubyonrails.org/v7.0.4.2/classes/ActiveModel/Errors.html) 收集错误的信息
	1. `errors`：该方法返回的类 `ActiveModel::Errors` 的实例，包含错误信息；`full_messages` 返回错误信息的列表
	2. `errors[]`：返回指定属性的所有错误信息；这是一个 `:tag -> string[]` 的映射（tag 到 字符串数组的映射）
	3. `errors.where(...)`：返回指定的多个属性的错误信息（列表？）；列表中的对象有 `attribute`，`type`，`options`，`message`，`full_message` 等属性
	4. `errors.add`：通常在后端的 `validate` 方法的参数块例调用；以添加错误
	5. `errors[:base]`：`:base` 对应于与 对象整体状态 有关的错误，而不是与特定的属性相关的错误
	6. `errors.clear`：清除 errors 容器
	7. `errors.size`：返回错误总数

!!! note "8. 在视图中显示验证错误"
	[参见](https://guides.rubyonrails.org/active_record_validations.html#displaying-validation-errors-in-views)


#### Callbacks ####


!!! note "1. 对象生命周期"

!!! note "2. 回调"
回调可以提供在 创建、保存、更新、删除、验证或从数据库加载 Active Record 对象时运行的代码

注册回调

!!! note "3. 可用的回调"
	0. 以下将各种操作后对应的回调方法以时间顺序列出：
	1. create：
		- before_validation
		- after_validation
		- before_save
		- around_save
		- **before_create**
		- **around_create**
		- **after_create**
		- after_save
		- after_commit / after_rollback
	2. update:
		- before_validation
		- after_validation
		- before_save
		- around_save
		- **before_update**
		- **around_update**
		- **after_update**
		- after_save
		- after_commit / after_rollback
		- 注意：`create` 和 `update` 的共同点：都有 `validation`，`save`和事务
	3. destroy:
		- **before_destroy**
		- **around_destroy**
		- **after_destroy**
		- after_commit / after_rollback
	4. `after_initialize`：实例化 `Active Record` 对象，直接使用 `new`，或 从数据库加载记录时调用
	5. `after_find`：每当 `Active Record` 从数据库加载记录时都会回调（`after_find` 在 `after_initialize` 之前调用）
	6. `after_touch`：每当 `Active Record` 对象被 “touch” 时都会调用；注：`belongs_to` 方法也提供了参数 `:touch`



!!! warning
	- 应该避免在回调中更新或保存属性（如：`self.<attribute> = <value>`）；但是可以在 `before_create` 和 `before_update` 或更早之前保存属性
	- `before_destroy` 回调应该放在 `dependent: :destroy` 关联之前（或者使用 `prepend: true` 选项），以确保它们在记录被`dependent: :destroy` 删除之前执行

!!! note "4. 回调的细节内容"
	- 触发回调的方法：
		- create，create!
		- destroy，destroy!
		- destroy_all，destroy_by
		- save，save!，save(validate: false)
		- toggle!
		- touch
		- update_attribute
		- update
		- update!
		- valid?
		- 触发 `after_find`：
			- all
			- first
			- find
			- find_by
			- find_by_*，find_by_*!
			- find_by_sql
			- last
		- 每次初始化类对象时都会触发：`after_initialize`
	- 跳过回调的方法：
		- 和验证一样，这些方法可以跳过回调：
		- decrement!，decrement_counter
		- delete，delete_all，delete_by
		- increment!，increment_counter，insert
		- insert!，insert_all，insert_all!
		- touch_all
		- update_column，update_columns
		- update_all，update_counters
		- upsert，upsert_all
	- 停止回调：`throw :abort`
	- 关联回调：
	- 条件回调：`:if` 和 `:unless`
	- 回调类：
	- 事务回调：`after_commit`，`after_rollback`；[详见此链接](https://guides.rubyonrails.org/active_record_callbacks.html)

#### Associations ####

!!! note "1. 什么是关联"
	- 假设 `authors` 和 `books` 两张表之间是 一对多 关系
		- 若要添加一个 `book`，传统方式需要操作 `books` 表；添加关联后，可以对一个 `author` 调用逻辑上的 `books` 集合，直接对该集合添加 `book` 即可
		- 若要删除一个 `author`，传统方式是删除与该 `author` 关联的 `book` 记录，然后删除 `author`；添加关联后，可以直接删除 `author`（rails 会自动删除与 `author` 关联的 `book` 记录）


!!! note "2. 关联的类型"
	- `belongs_to`：表示该 `model` 的某个实例属于另一个 `model` 的某个实例；另一个`model`应该用 `has_one` 或 `has_many` 反向关联；注：`belongs_to` 不能保证引用一致性，因此需要参数 `foreign_key: true`；有必要时加上 `index: { unique: true }`
	- `has_one`：表示该 `model` 被另一个 `model` 所引用；如：每个供应商只有一个账户（前者使用 `has_one`，后者使用 `belongs_to`）
	- `has_many`：表示该 `model` 的某个实例具有另一个 `model` 的多个实例；如：作者和书籍的关系（前者用`has_many`，后者用`belongs_to`；这里假定书没有多作者）；必要时，加上 `index: true`
	- `has_many :through`：可以通过中间表实现 多对多 或 一对多关联，用法：“一表”使用 `has_many :<多表> through: :<中间表>`，中间表使用 `belongs_to :<表名>` 或 `has_many :<表名>`；如：`医生，预约表，病人`，`书，章，节`
	- `has_one :through`：表示该 `model` 的某个实例通过中间表关联到另一个 `model` 的某个实例；如：`人，账号，账号记录`
	- `has_and_belongs_to_many`：直接与另一个表进行多对多关联
	- `belongs_to` 和 `has_one` 之间的选择：这两者容易混淆，但是前者是某种引用，而后者是告知这种引用的存在
	- `has_many :through` 和 `has_and_belongs_to_many` 之间的选择：两者都可以实现 多对多关系；假如我们需要对中间表添加额外属性 或 需要验证中间表 或 回调，我们应使用前者，否则后者会比较方便
	- 多态关联：表示该 `model` 的某个实例属于**多个** `model` 的某个实例，用法：`belongs_to :<多态名？>, polymorphic: true`，被引用的表使用 `has_many :<该model名>, as: :<多态名>`，...；如：多种类型的账号共有多个图片？
	- `self join`：

注：仅有 `belongs_to` 会在迁移文件中出现，其指定引用关系；每加一条引用边，都会添加不小于两条迁移代码

!!! note "3. `tips`, `tricks`, `warnings`"
	- 控制缓存
	- 避免命名冲突
	- 更新架构
	- 控制关联范围
	- 双向关联

!!! note "4. 详细的关联参考"
	- `belongs_to`
	- `has_one`
	- `has_many`
	- `has_and_belongs_to_many`
	- 关联回调
	- 关联扩展

!!! note "5. 单表集成(`STI`)"



#### Query Interface ####

1. Active Record 查询接口
2. 从数据库中检索对象
3. `conditions`
4. `ordering`
5. 选择特定字段
6. 限制和偏移
7. 群
8. 拥有
9. 覆盖条件
10. 空关系
11. 只读对象
12. 锁定记录以进行更新
13. 连接表
14. 预先加载关联
15. 范围
16. 动态查找器
17. 枚举
18. 了解方法链接
19. 查找后构件新对象
20. 通过 SQL 查找
21. 对象的存在
22. 计算
23. 运行解释

#### Active Model Basics ####



### 2.Views ###



### 3.Controllers ###


### 4.Other Components ###

### 5.Digging Deeper ###

### 6.Extending Rails ###
