# ansible-vim-ide
A very beautifule vim-ide for ansible

# 设计初衷:
   目前看github里面有很多写的很牛的VIM-IDE大部分是基于shell以及vimrc实现,但是大部分只是简单的修改了vimrc配置文件添加了一些插件就完事儿了.
放到不同环境安装可能会出现很多问题,比如我的vim版本是7.0+ 你写的vimrc是针对8.0的，还有就是我的vimrc需要lua 以及python3支持但是我本地的vim不支持,或者我想选择安装vim支持的一部分功能或者自定义我的安装插件等等
    那么问题来了别人的vimrc我难道还需要手动安装编译我的环境么???太不智能了,对于一些大规模主机集群vim部署,基本的系统环境依赖,系统软件版本的自动识别更新,vimrc配置文件根据系统参数的动态调整,后期vim插件的快速更新,快速卸载等 github上大部分都是不支持的,但是我们是支持的！！！！！



  # 功能描述:

  1. vim 颜色插件airline

  2. 漂亮美观的缩进代码对齐线

  3. ansible-vim 插件支持

  4. vim NERDTree 树形树支持(F2)

  5. 神级补全插件YouCompleteMe支持

  6. vim tagbar 显示编程语言的函数 变量 类等（目前已经和nerdtree捆绑到一起） (F3)

  7. vim 行尾空格一键删除 (F5)

  8. Nerdcommenter 快捷注释(\leader+)
    * <leader>ca在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//
    * <leader>cc注释当前行
    * <leader>cs以”性感”的方式注释
    * <leader>cA在当前行尾添加注释符，并进入Insert模式
    * <leader>cu取消注释

  9. vim各种括号补全(彩虹颜色)


  10. fuzzy finder 模糊搜索工具
  * 使用说明：https://github.com/junegunn/fzf/blob/master/README-VIM.md

  11. vim粘贴缩进混乱解决方案(F1开启/关闭vim paste模式)

  12. nerdtree-git-plugin 显示文件git代码状态

  13. vim mini buffer explorer 标签插件(F6 F7翻页功能)

  14. 自动代码折叠功能

  15. untotree 撤销树功能,方便编写过程中随时回退到某一个时间点（F9开启）


# 使用方法:
1. ansible安装 

可以参考官方网站安装方式https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#latest-release-via-dnf-or-yum
目前centos系列用户可以直接使用yum安装（ansible官方YUM 仓库地址:https://releases.ansible.com/ansible

2.配置文件处理

2.1 将项目下的hosts 主机资源文件替换ansible默认的hosts文件(centos7默认在/etc/ansible/hosts)
如果你要部署多台主机的话可以参考hosts文件里面的说明操作
2.2 将项目下的vim文件夹拷贝到ansible的roles目录下面即可,执行ansible-playbook vim-ide.yml即可
(友情提示最好看一下ansible的基础支持呦  教程地址:http://www.ansible.com.cn  安装过程很简单操作很方便！！！)


# 操作系统支持:
目前支持的Linux操作系统:centos7系列后面会支持更多


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

如果您觉得项目不错的话可以多多支持一下作者,后面会做出更好的改进
<div align="center">
<img src="https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example9.png" alt=""/>
<img src="https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example10.png" alt=""/><br>
</div>

