let s:path=globpath('~','.vim')
let s:path=globpath(s:path,'viminit')
let s:path=globpath(s:path,'init.vim')

if has("win32") || has("win64")
  let g:vimfiles_path="D:\\Program Files\\VIM\\vimfiles"
else 
  let g:vimfiles_path=expand("~/vimfiles")
endif

exec 'source ' . s:path