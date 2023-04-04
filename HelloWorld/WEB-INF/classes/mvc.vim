let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
exe "cd " . escape(expand("<sfile>:p:h"), ' ')
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd /opt/tomcat/apache-tomcat-9.0.73/webapps/HelloWorld/WEB-INF/classes/com/example/servlets/SquareDao.java
edit /opt/tomcat/apache-tomcat-9.0.73/webapps/HelloWorld/WEB-INF/classes/com/example/servlets/SquareDao.java
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 13 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 76 + 86) / 172)
exe '2resize ' . ((&lines * 25 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 76 + 86) / 172)
exe '3resize ' . ((&lines * 31 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 95 + 86) / 172)
exe '4resize ' . ((&lines * 7 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 95 + 86) / 172)
argglobal
let s:l = 1 - ((0 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("../../squares.jsp") | buffer ../../squares.jsp | else | edit ../../squares.jsp | endif
let s:l = 1 - ((0 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("com/example/servlets/SquareServlet.java") | buffer com/example/servlets/SquareServlet.java | else | edit com/example/servlets/SquareServlet.java | endif
let s:l = 1 - ((0 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("../../index.html") | buffer ../../index.html | else | edit ../../index.html | endif
let s:l = 31 - ((6 * winheight(0) + 3) / 7)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 0
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 13 + 20) / 41)
exe 'vert 1resize ' . ((&columns * 76 + 86) / 172)
exe '2resize ' . ((&lines * 25 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 76 + 86) / 172)
exe '3resize ' . ((&lines * 31 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 95 + 86) / 172)
exe '4resize ' . ((&lines * 7 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 95 + 86) / 172)
tabnext 1
badd +1 /opt/tomcat/apache-tomcat-9.0.73/webapps/HelloWorld/WEB-INF/classes/com/example/servlets/SquareDao.java
badd +1 ../../squares.jsp
badd +1 com/example/servlets/SquareServlet.java
badd +0 ../../index.html
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
