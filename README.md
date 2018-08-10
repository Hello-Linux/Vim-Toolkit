# ansible-vim-ide
A very beautifule vim-ide for ansible

# 设计初衷:
目前看github里面有很多写的很牛的VIM-IDE大部分是基于shell以及vimrc实现,但是大部分只是简单的修改了vimrc配置文件添加了一些插件就完事儿了.
放到不同环境安装可能会出现很多问题,比如我的vim版本是7.0+ 你写的vimrc是针对8.0的，还有就是我的vimrc需要lua 以及python3支持但是我本地的vim不支持,那我用了你的vimrc我还需要手动安装编译我的环境么?太不智能了 对于一些大规模主机vim部署,基本的环境依赖解决,系统软件版本的自动识别更新,vimrc配置文件根据系统参数的动态调节等



  #功能描述:

  1. vim 颜色插件airline

  2. 漂亮美观的缩进代码对齐线

  3. ansible-vim 插件支持

  4. vim NERDTree 树形树支持(F2)

  5. 神级补全插件YouCompleteMe支持

  6. vim tagbar 显示编程语言的函数 变量 类等 (F3)

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

  12. nerdtree-git-plugin 显示文件git状

  13. vim mini buffer explorer 标签插件(F6 F7翻页功能)

  14. 自动代码折叠功能


使用方法:
1. 安装ansible程序,之后将项目的vim文件夹拷贝到ansible的roles目录下面,执行ansible-playbook vim.yml即可

目前支持的Linux操作系统:centos7系列后面会支持更多


运行截图:
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example1.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example2.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example3.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example4.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example5.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example6.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example7.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example8.png)

如果您觉得项目不错的话可以多多支持一下作者,后面会做出更好的改进
<div align="center">
<img src="https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example9.png" alt=""/>
<img src="https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example10.png" alt=""/><br>
</div>

