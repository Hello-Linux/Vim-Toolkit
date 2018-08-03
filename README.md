# ansible-vim-ide
A very beautifule vim-ide for ansible

#功能描述:

  1. vim 颜色插件airline

  2. 漂亮美观的缩进代码对齐线

  3. ansible-vim 插件支持

  4. vim NERDTree 树形树支持(F2)

  5. 基于文件名,文件路径智能补全，常用系统函数补全，Omni光标智能补全，vimshell补全，编写记忆功能不全(基于文件cache),sql 以及常用编程语言补全(python基于jedi并在带doc功能)

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


使用方法:
1. 安装ansible程序,之后将项目的vim文件夹拷贝到ansible的roles目录下面,执行ansible-playbook vim.yml即可
2. 终端运行 vim +PluginInstall +qal

目前支持的Linux操作系统:centos7系列后面会支持更多


运行截图:
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example1.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example2.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example3.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example4.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example5.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example6.png)
![image](https://github.com/Hello-Linux/Ansible-VIM-IDE/raw/master/images/example7.png)

