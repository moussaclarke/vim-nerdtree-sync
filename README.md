# vim-nerdtree-sync

A plugin that show the current file on [NERDtree](https://github.com/scrooloose/nerdtree)

![example](https://raw.githubusercontent.com/unkiwii/vim-nerdtree-sync/demo/vim-nerdtree-sync-cast.gif)

## Install

*  [Pathogen](https://github.com/tpope/vim-pathogen)  
```git clone https://github.com/unkiwii/vim-nerdtree-sync.git ~/.vim/bundle/vim-nerdtree-sync```

*  [vim-plug](https://github.com/junegunn/vim-plug)  
```Plug 'unkiwii/vim-nerdtree-sync'```

*  [NeoBundle](https://github.com/Shougo/neobundle.vim)  
```NeoBundle 'unkiwii/vim-nerdtree-sync'```

*  [Vundle](https://github.com/gmarik/vundle)  
```Plugin 'unkiwii/vim-nerdtree-sync'```

## How it works

After open a file, if NERDTree is open, it will show that file in NERDTree window. If you have `cursorline` enabled it will also highlight the file.
If you don't have `cursorline` setted or don't want to set it you can configure the plugin to highlight the file:
```
let g:nerdtree_sync_cursorline = 1
```
Or configure NERDTree to always show the cursorline:
```
let g:NERDTreeHighlightCursorline = 1
```
That will run `setlocal cursorline` in the NERDTree window


## Excluding Buffers

You can exclude buffers from being highlighted in NERDTree.

Exclude "FooBar" buffers and any buffer ending in ".log" - separate multiple patterns with `\|`
```
let g:nerdtree_sync_excluded_patterns = 'FooBar\|.log$'
```
Or to exclude only "FooBar":
```
let g:nerdtree_sync_excluded_patterns = 'FooBar'
```
Or to exclude multiple specific file paths:

```
let g:nerdtree_sync_excluded_patterns = '/path/to/exclude/file1.txt\|/another/file.log'
```

## Credits

* [Lambart](https://superuser.com/users/158390/lambart) from superuser for his [answer](https://superuser.com/questions/195022/vim-how-to-synchronize-nerdtree-with-current-opened-tab-file-path/474298#474298)

## License
```
       DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
                   Version 2, December 2004

Copyright (C) 2017 Lucas Gabriel Sanchez <unkiwii@gmail.com>

Everyone is permitted to copy and distribute verbatim or modified
copies of this license document, and changing it is allowed as long
as the name is changed.

           DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

0. You just DO WHAT THE FUCK YOU WANT TO.
```
