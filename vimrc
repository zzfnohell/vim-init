let s:path=globpath('~','.vim')
let s:path=globpath(s:path,'vim-init')
let s:path=globpath(s:path,'init.vim')

exec 'source ' . s:path
