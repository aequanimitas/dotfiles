setlocal expandtab autoindent shiftwidth=2 tabstop=2
setlocal expandtab autoindent shiftwidth=2 tabstop=2
map ,tj :w\|:silent !echo "jasmine %" > test-code<cr>\|:redraw!<cr> 
map ,clr :w\|:silent !echo "clear" > test-code<cr>\|:redraw!<cr> 
map ,esl :w\|:silent !echo "eslint %" > test-code<cr>\|:redraw!<cr> 
