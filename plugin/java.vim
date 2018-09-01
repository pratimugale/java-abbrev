" Vim global plugin made for Java Filetypes 
" Last Change: 2018-09-01 Sat 07:37 PM IST
" Maintainer: Pratim Ugale

" To avoid the Script being loaded Multiple Times in one Vim Instance:
if exists("loaded_java")
	finish
endif
let loaded_java = 1

"au BufNewFile,BufRead *.java call ToDO()
autocmd FileType java call Todo()



" Plugin Related Code:

" Vim functions need to start with capital letter
function Todo()
"iab sout System.out.println("");<esc><left><left>i<esc>
inoremap sout System.out.println("");<left><left><left>
inoremap psvm public static void main(String[] args){<CR>}<left><CR><up><Tab>
"source! commands.vim
endfunction
