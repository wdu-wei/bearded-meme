""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"Get out of VI's compatible mode..
set nocompatible
" 设定文件浏览器目录为当前目录
set bsdir=buffer
set autochdir
" 设置编码
"set enc=utf-8
" 设置文件编码
" set fenc=utf-8

"Turn on WiLd menu
set wildmenu
set wildmode=list:longest,full
set completeopt=preview,menu,longest
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complet
 
"Set to auto read when a file is changed from the outside
if exists("&autoread")
  set autoread
endif
 
"Have the mouse enabled all the time:
" set mouse=a
 
"Set mapleader
let mapleader = ","
let g:mapleader = ","
 
"Fast saving
nmap <leader>w :w!<cr>
 
if has("gui_running")
	" 设置字符集
	set encoding=utf-8
	" 设置文件编码检测类型及支持格式
	"set fileencodings=ucs-bom,utf-8,chinese,prc,taiwan,latin-1
	set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936 

	let &termencoding=&encoding
	 
	" 解决菜单乱码
	source $VIMRUNTIME/delmenu.vim
	source $VIMRUNTIME/menu.vim
	 
	" 解决consle输出乱码
	language messages zh_CN.utf-8
	" 指定菜单语言
	"set langmenu=zh_CN.UTF-8

	" 启动时位置
	"winpos 0 0
	winpos 735 235

	" 启动时大小
	"set lines=55 columns=108 
	"set lines=35 columns=136 
	"set lines=999 columns=999 
	set lines=35 columns=180 
	"vsplit

	set ai
	if has("win32")
		set fileencoding=chinese
		"set guifont=ProFontWindows:h11:cANSI
		"set guifont=Terminus:h12:cANSI
		"set guifont=Inconsolata:h11
		"set guifont=Monaco:h9:cANSI
		"set guifont=Consolas:h11:cANSI
		"set guifont=ProggyCleanTT:h13:cANSI
		"set guifont=monofur:h11:cANSI
		"set guifont=Envy_Code_R:h10:cANSI
		"set guifont=ProFontWindows:h11:cANSI
		"set gfw=YouYuan:h10:cANSI
		"set guifont=YaHei\ Consolas\ Hybrid:h11:cANSI
		"set guifont=Courier_New:h10:cANSI
		"set guifont=DejaVu\ Sans\ Mono\:h10:cANSI
		set guifont=Bitstream\ Vera\ Sans\ Mono\:h10:cANSI
		"set guifont=Lucida_Console:h12:cANSI
	elseif has("unix") || has("mac")
		set fileencoding=utf-8
		"set guifont=SimSun\ 10
		set guifont=Envy\ Code\ R\ 11
		"set guifontwide=Yahei\ Mono\ 11 
		"set guifont=明兰_Code\ 9
		"set guifont=Inconsolata\ 9
		"set guifont=ProggyCleanTT\ 9
		set guifont=monofur\ 9
		"set guifont=Terminus\ 9
		"set guifont=ProFontWindows\ 8
		"set gfw=Envy\ Code\ R:h10
	endif


	if has("gui_macvim")
	" 取消默认的快捷键
		"let macvim_skip_cmd_opt_movement = 1
		"let macvim_hig_shift_movement = 1

		" 设置背景透明度
		set transparency=15
		" 隐藏工具条
		"set guioptions-=T "egmrt

		" 只显示文件名，不显示目录
		set guitablabel=%t
		" 绑定自己需要的cmd快捷键
		"macm File.Save                              key=<D-s>
		"macm File.Save\ As\.\.\.                    key=<D-S>
		"macm Edit.Undo                              key=<D-z> action=undo:
		"macm Edit.Redo                              key=<D-Z> action=redo:
		"macm Edit.Cut                               key=<D-x> action=cut:
		"macm Edit.Copy                              key=<D-c> action=copy:
		"macm Edit.Paste                             key=<D-v> action=paste:
		"macm Edit.Select\ All                       key=<D-A> action=selectAll:
	endif

endif
 
" 背景颜色
"set background=light
"set background=dark
"color slate
"colo murphy

"let g:molokai_original=1
"colo molokai

"colo wombat
"colo obsidian
colo ir_black
"colo ironman
"colo xemacs
"colo desert
"colo sonofobsidian
"colo solarized
"colo hemisu
"colo railscasts
"colo mustang
"colo tango_morning_theme_for_vim_by_voyeg3r
"colo neverland
"colo lucius

" 不备份
set nobackup
" 不生成swap文件
setlocal noswapfile

" 显示行号
set nu!

" 显示匹配括号
set showmatch

" 不自动换行
set nolinebreak
set nowrap
"set wrap

" 历史数
set history=1024
" 键盘操作
map <Up> gk
map <Down> gj
" 命令行高度
set cmdheight=1
"set cmdheight=2

" 默认隐藏gvim的菜单栏,用<F2>控制打开
set guioptions-=m
set guioptions-=T
map <silent> <F2> : if &guioptions =~# 'T' <Bar>
		\set guioptions-=T <Bar>
		\set guioptions-=m <bar>
	\else <Bar>
		\set guioptions+=T <Bar>
		\set guioptions+=m <Bar>
	\endif<CR> 

" F5 前一个tab标签
map <F5> :tabp<CR>
" F6 后一个tab标签
map <F6> :tabn<CR>
" F7 新开一个tab标签
map <F7> :tabnew<CR>

" <F3><F4>大小写转换
"map <F3> gu
"map <F4> gU

" 设置以缩进的方式自动折叠和设置快捷方式
"map <F3>    zO   "打开折叠
"map <F4>    zc   "关闭折叠
map <F9>    zR    "打开所有折叠
map <F10>    zM   "关闭所有折叠

" 查找结果高亮度显示
set hlsearch

" 设置语法高亮度
set syn=cpp

" 代码高亮
syntax enable
syntax on
" 开启语法折叠
set foldenable
"set foldmethod=indent
set foldmethod=syntax
set autoindent

" tab宽度
set tabstop=4
" tab自动缩进宽度
set shiftwidth=4
set cindent shiftwidth=4
set autoindent shiftwidth=4
" 将tab转换为空格
"set expandtab

" 检测文件的类型
" 允许使用ftplugin目录下的文件类型特定脚本
" 允许使用indent目录下的文件类型缩进
filetype on
filetype plugin on
filetype indent on
" pydiction
let g:pydiction_location = '$VIMRUNTIME\pydiction-1.2.1/complete-dict' 
let g:pydiction_menu_height = 20

" 当右键单击窗口的时候， 弹出快捷菜单
set mousemodel=popup

" 用空格键来开关折叠（说明西方“"”后面的内容为注释，不会被VIM所识别）
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" backspace 删除
":set backspace=indent,eol,start
" 使回格键（backspace）正常处理indent, eol, start等 
set backspace=2 
" 允许backspace和光标键跨越行边界 
set whichwrap+=<,>,h,l 

" 中文帮助
if version > 603
	set helplang=cn
endif

" C/C++注释
set comments=://
" 修正自动C式样注释功能 <2005/07/16>
set comments=s1:/*,mb:*,ex0:/
" 增强检索功能
set tags=./tags,./../tags,./**/tags
" 保存文件格式
set fileformats=unix,dos

" 高亮超过79字符的内容
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%79v.*/
"highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white 
"match OverLength '\%101v.*'

" 在被分割的窗口间显示空白，便于阅读 
"set fillchars=vert:\ ,stl:\ ,stlnc:\ 

" 状态行颜色 
"highlight StatusLine guifg=SlateBlue guibg=Yellow 
"highlight StatusLineNC guifg=Gray guibg=White 

" 状态行（包括文件类型和解码） 
set laststatus=2
set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%d/%m/%Y-%H:%M\")}%=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l\,%L\ %P
 
" 在状态行上显示光标所在位置的行号和列号 
set ruler 
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%) 
 
" 与windows共享剪贴板 
set clipboard+=unnamed

"Ignore case when searching
 "set ignorecase
 set incsearch

"Set magic on
 set magic

"No sound on errors.
 set noerrorbells
 set novisualbell
 set t_vb=

" Show TAB char and end space
set listchars=tab:>-,trail:~
set list
syntax match Trail " +$"
highlight def link Trail Todo

"Set Ctags
set tags=tags;
set autochdir

"自动侦测加载_vimrc文件
if has("win32")
	autocmd! bufwritepost _vimrc source %
elseif has("unix") || has("mac")
	autocmd! bufwritepost .vimrc source ~/.vimrc
endif

""""""""""""""""""""""""""""""
" Tag list (ctags)
""""""""""""""""""""""""""""""
if has("win32")
"if MySys() == "windows"                "设定windows系统中ctags程序的位置
	let Tlist_Ctags_Cmd = 'ctags'
"elseif MySys() == "linux"              "设定linux系统中ctags程序的位置
elseif has("unix") || has("mac")
	let Tlist_Ctags_Cmd = '/usr/bin/ctags'
endif
map <F4> :TlistToggle<CR> 
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 
autocmd BufReadPost *.cpp,*.c,*.h,*.BAS,*.m,*.py,*.pl,*.hpp,*.cc,*.cxx nested TlistOpen


" toggle Tagbar display 
"map <F4> :TagbarToggle<CR> 
" autofocus on Tagbar open 
"let g:tagbar_autofocus = 1 
"let g:tagbar_width = 40       "设置宽度，默认为40
"autocmd VimEnter * nested TagbarOpen    "打开vim时自动打开tagbar
"let g:tagbar_left = 1         "在左侧
"let g:tagbar_right = 1        "在右侧
"autocmd BufReadPost *.cpp,*.c,*.h,*.BAS,*.m,*.py,*.pl,*.hpp,*.cc,*.cxx nested TagbarOpen

" 文件管理器
let NERDTreeWinPos='left'
let NERDTreeWinSize=31
let NERDTreeChDirMode=1

" F8 打开nerdtree
"map <F8> :NERDTreeToggle D:\xampp\htdocs<CR>
map <F8> :NERDTreeToggle<CR>
"autocmd VimEnter * nested NERDTree " open NERDTree windows automatically when VIM is open
" guarantees that the NERDTrees for all tabs will be one and the same
"autocmd BufEnter * NERDTreeMirror
"autocmd VimEnter * wincmd w

" run python
map <F12> :!C:\Python32\python.exe %

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction
