# 设计初衷:
目前看github里面有很多写的都不错的VIM-IDE,但是有这么几个缺点
* 1.功能过于单一：比如我的IDE只是针对某一个编程语言，功能以及配置都不能灵活的自定义。
* 2.环境依赖问题：安装他们的vim-ide之前可能需要我们手动安装一些软件依赖比如python、lua、go、java、c++等各种环境依赖
* 3.vim版本过于陈旧：目前最新的vim版本已经9.0了但是大部分系统还是老的版本7.0，新版本具有更好的性能以及扩展性。
* 4.批量部署问题,如果我有很多台甚至上千台服务器那么我要挨个去手动部署么？在这里我们是支持同时部署上千台。。。

  # 功能描述:

  * 1.vim 颜色插件AirLine,展示漂亮美观的vim终端环境
    
  * 2.针对编写代码层面优化:
    * 漂亮美观的缩进代码对齐线,编写代码脉络清晰可见
    * 神级补全插件YouCompleteMe支持python、go、java、c#、Ansible等主流编程语言，妈妈以后再也不用担心我的编程了
    * 行尾空格一键删除(大部分人偶尔会在编写代码过程中在行尾加一个小尾巴) (快捷键 F5)
    * 括号补全(彩虹颜色)
    * 粘贴缩进混乱解决方案(F1开启/关闭vim paste模式)
    * 自动代码折叠功能,让代码更美观
    * ployglot语法高亮插件支持,让各种代码高亮更智能
    * 异步语法检测插件ale支持,比传统的syntastic快很多并且不卡顿,大部分编程语言都支持

  * 3.vim NERDTree 树形树支持让目录查找跳转显示更加智能方便
    * nerdtree-git-plugin 显示文件git仓库代码状态
    * tagbar 显示编程语言的函数 变量 类等 (快捷键 F3开启)
    * Nerdcommenter 智能快捷注释代码
    * 在vim的Visual模式下选定多行后，按下键盘"\"键位+ci)，会对选中的特定区块进行注释/反注释.
    * 支持devicons小图标智能展示功能，可以在vim中给文件增加精美图标展示.

  * 4.集成fuzzy finder 模糊搜索神器
    * 默认快捷键\f搜索文件,\a快速搜索目录文本,\b查看buffers缓冲记录
    * 快速模糊搜索文件，缓冲区，单词，文本行，tags，git 提交历史等，并且支持预览。
    * 使用说明：https://github.com/junegunn/fzf/blob/master/README-VIM.md

  * 5.vim mini buffer explorer 标签插件支持vim下多个文件之间的快速切换(F6 F7翻页功能)

  * 6.undotree 撤销树功能,方便编写过程中随时回退到某一个时间点（F9开启)

  * 7.支持在vim中打开一个异步terminal终端窗口,直接在vim窗口下进行命令的执行与调试（F10开启）

  * 8.支持在vim中浏览markdown文件方便快捷

  * 9.支持linux终端 Bash powerline 功能


# 部署步骤:
## 1. ansible安装

可以参考官方网站安装方式https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#latest-release-via-dnf-or-yum
目前centos系列用户可以直接使用yum安装（ansible官方YUM 仓库地址:https://releases.ansible.com/ansible）

## 2.一键安装
* 2.1 将项目下的所有文件拷贝到anbile的安装路径下面 (Redhat 系列默认在/etc/ansible)
* 2.2 修改/etc/ansible/hosts 配置文件
  * [vimide] 语句块下为需要部署的主机地址，[all:vars]语句块下定义主机的账号密码，其他配置信息可以参考文件说明
* 2.2 执行 ansible-playbook -i hosts vim-ide.yml
* 2.3 更新所有插件 ansible-playbook -i hosts update_plugin.yml
  ```ansible-playbook vim-ide.yml```

## 3.如何进行vim插件更新？
执行```ansible-playbook update_plugin.yml``` 即可

## 4.如何自定义配置文件?
  项目的自定义变量都放在了ansible的hosts文件内,熟悉ansible的用户可以自己修改hosts资源文件,比如自定义支持的python/go版本,ycm的一些配置等等

# 操作系统支持:
目前支持的Linux操作系统:centos7、Rocker系列后面会支持更多哦!


## 贡献&致谢

感谢所有为项目提交 `Issues`和`PRs` 的贡献者！

- [如何贡献](doc/HowToContribute.md)


# 运行样例截图:
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example1.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example2.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example3.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example4.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example5.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example6.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example7.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example8.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example11.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example12.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example14.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example15.png)

如果您觉得项目不错的话可以多多支持一下作者,后面会做出更好的改进
<div align="center">
<img src="https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example9.png" alt=""/>
<img src="https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example10.png" alt=""/><br>
</div>

