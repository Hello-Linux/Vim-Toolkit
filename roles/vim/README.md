# 设计初衷:
目前看github里面有很多写的都不错的VIM-IDE,但是有这么几个缺点
* 1.功能有的过于单一比如我的IDE只是针对某一个编程语言
* 2.环境依赖问题,安装他们的vim-ide之前可能需要我们手动安装一些软件依赖比如python,lua各种依赖
* 3.vim版本识别问题,目前最新的vim版本已经9.0了但是大部分系统还是老的版本7.0,github上大部分vim-ide项目的插件都在朝着新的vim版本发展,所以需要VIM-IDE部署更加具有灵活性
* 4.VIM-IDE的配置自定义化,大部分github项目还是不支持的,我们目前项目引入了自定义功能,比如youcompleteme插件的支持的语言自定义选择,python环境自定义选择,vimrc配置文件模板化等
* 5.批量部署问题,如果我有很多台甚至上千台服务器那么我要挨个去手动部署么？在这里我们是支持同时部署上千台。。。

  # 功能描述:

  * 1.vim 颜色插件AirLine,展示漂亮美观的vim终端环境

  * 2.漂亮美观的缩进代码对齐线,编写代码脉络清晰可见

  * 3.Ansible-Vim 插件支持让ansible编写更加顺畅

  * 4.vim NERDTree 树形树支持让目录查找跳转显示更加智能方便

  * 5.神级补全插件YouCompleteMe支持python,go,java.c#等主流编程语言，妈妈以后再也不用担心我的编程了

  * 6.vim tagbar 显示编程语言的函数 变量 类等（目前已经和nerdtree捆绑到一起,统一在左侧栏显示） (快捷键 F3开启)

  * 7.vim 行尾空格一键删除(大部分人偶尔会在编写代码过程中在行尾加一个小尾巴) (快捷键 F5)

  * 8.Nerdcommenter 智能快捷注释代码(\leader+)
    * <leader>ca在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//
    * <leader>cc注释当前行
    * <leader>cs以”性感”的方式注释
    * <leader>cA在当前行尾添加注释符，并进入Insert模式
    * <leader>cu取消注释

  * 9.vim各种括号补全(彩虹颜色)

  * 10.fuzzy finder 模糊搜索工具,vim下最快的文件目录搜索工具
    * 使用说明：https://github.com/junegunn/fzf/blob/master/README-VIM.md

  * 11.vim粘贴缩进混乱解决方案(F1开启/关闭vim paste模式)

  * 12.nerdtree-git-plugin 显示文件git仓库代码状态

  * 13.vim mini buffer explorer 标签插件支持多个文件之间的快速切换(F6 F7翻页功能)

  * 14.自动代码折叠功能,让代码更美观

  * 15.undotree 撤销树功能,方便编写过程中随时回退到某一个时间点（F9开启)

  * 16.异步语法检测插件ale支持,比传统的syntastic快很多并且不卡顿,大部分编程语言都支持

  * 17.ployglot语法高亮插件支持,让各种代码高亮更智能

  * 18.支持在vim中打开一个异步terminal终端窗口,方便在vim下的命令的执行与调试（F10开启）

  * 19.支持在vim中浏览markdown文件方便快捷

  * 20.bash powerline 功能支持


# 部署步骤:
## 1. ansible安装

可以参考官方网站安装方式https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#latest-release-via-dnf-or-yum
目前centos系列用户可以直接使用yum安装（ansible官方YUM 仓库地址:https://releases.ansible.com/ansible

## 2.一键安装
* 2.1 将项目下的所有文件拷贝到anbile的安装路径下面 (centos7默认在/etc/ansible)
* 2.2 执行ansible-playbook vim-ide.yml

## 3.vim插件更新
执行ansible-playbook update_plugin.yml 即可

## 4.如何自定义配置文件
  项目的自定义变量都放在了ansible的hosts文件内,熟悉ansible的用户可以自己修改hosts资源文件,比如自定义支持的python/go版本,ycm的一些配置等等

# 操作系统支持:
目前支持的Linux操作系统:centos7、Rocker系列后面会支持更多哦


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

