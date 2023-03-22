vim.cmd [[
try
  colorscheme darkplus
  set background=dark
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=light
endtry
]]
