" 自动命令和相关设置
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()"

function! SetTitle()
    if &filetype == 'sh'
        call setline(1, "##########################################################################")
        call append(line("."), "# File Name: ".expand("%"))
        call append(line(".")+1, "# Author: amoscykl")
        call append(line(".")+2, "# mail: amoscykl980629@163.com")
        call append(line(".")+3, "# Created Time: ".strftime("%c"))
        call append(line(".")+4, "#########################################################################")
        call append(line(".")+5, "#!/bin/zsh")
        call append(line(".")+6, "PATH=/home/edison/bin:/home/edison/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/work/tools/gcc-3.4.5-glibc-2.3.6/bin")
        call append(line(".")+7, "export PATH")
        call append(line(".")+8, "")
    else
        call setline(1, "/*************************************************************************")
        call append(line("."), "    > File Name: ".expand("%"))
        call append(line(".")+1, "    > Author: amoscykl")
        call append(line(".")+2, "    > Mail: amoscykl@163.com ")
        call append(line(".")+3, "    > Created Time: ".strftime("%c"))
        call append(line(".")+4, " ************************************************************************/")
        call append(line(".")+5, "")
    endif

    if &filetype == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif

    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif

    autocmd BufNewFile * normal G
endfunction
