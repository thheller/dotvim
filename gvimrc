
" make mvim slightly transparent when not focused, helps when terminal window
" is on top, dont really like transparency when coding so use this hack
" has some issues but usually works
autocmd FocusGained * set transparency=0
autocmd FocusLost * set transparency=15 
  
" auto save when losing focus, way too used to this from textmate to live
" without
autocmd FocusLost * :wa
