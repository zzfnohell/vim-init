let s:path=globpath('~','.vim')
let s:path=globpath(s:path,'viminit')
let s:path=globpath(s:path,'init.vim')

exec 'source ' . s:path
