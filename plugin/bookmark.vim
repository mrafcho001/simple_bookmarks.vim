set viminfo+=!

if !exists('g:simple_bookmarks_storage')
  let g:simple_bookmarks_storage = {}
endif

if !exists('g:simple_bookmarks_filename')
  let g:simple_bookmarks_filename = '~/.vim_bookmarks'
endif

command! -nargs=1 Bookmark call simple_bookmarks#Add(<f-args>)
command! -nargs=1 -complete=custom,simple_bookmarks#BookmarkNames DelBookmark call simple_bookmarks#Del(<f-args>)
command! -nargs=1 -complete=custom,simple_bookmarks#BookmarkNames GotoBookmark call simple_bookmarks#Go(<f-args>)
command! CopenBookmarks call simple_bookmarks#Copen()
