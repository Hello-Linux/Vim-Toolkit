# ansible-vim-ide
A very beautifule vim-ide for ansible

#功能描述:

  1.vim 颜色插件airline

  2.vim 缩进显示indentLine

  3.ansible-vim 插件支持

  4.vim NERDTree 树形树支持(F2)

  5.vim 文件名智能补全(F4)

  6.vim tagbar (F3)

  7.vim 行尾空格一键删除 (F5)

  8.Nerdcommenter 快捷注释(\leader+)
    * <leader>ca在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//
    * <leader>cc注释当前行
    * <leader>cs以”性感”的方式注释
    * <leader>cA在当前行尾添加注释符，并进入Insert模式
    * <leader>cu取消注释

  9.自动补全括号,高亮各种括

  10.添加fuzzy finder 模糊搜索工具
    * 使用说明：https://github.com/junegunn/fzf/blob/master/README-VIM.md

  11. 增加vim粘贴缩进混乱解决方案(F6开启关闭vim paste模式)

使用方法:
安装ansible程序,之后将项目的vim文件夹拷贝到ansible的roles目录下面,执行ansible-playbook vim.yml即可
