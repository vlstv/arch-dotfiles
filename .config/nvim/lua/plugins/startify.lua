vim.g.startify_disable_at_vimenter = 0
vim.g.ascii = { 

          "=================     ===============     ===============   ========  ========",
          "\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //",
          "||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||",
          "|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||",
          "||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||",
          "|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||",
          "||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||",
          "|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||",
          "||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||",
          "||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||",
          "||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||",
          "||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||",
          "||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||",
          "||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||",
          "||   .=='    _-'          '-__\\._-'         '-_./__-'         `' |. /|  |   ||",
          "||.=='    _-'                                                     `' |  /==.||",
          "=='    _-'                          N V I M                           \\/   `==",
          "\\   _-'                                                                `-_   /",
          " `''                                                                      ``'"
 }
vim.g.footer = {
                "",
                "",
                "",
                ""}

vim.g.startify_custom_header = 'startify#center(g:ascii)'
vim.g.startify_custom_footer = 'startify#center(g:footer)'

vim.cmd([[
function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction
]])

vim.g.webdevicons_enable_startify = 1
vim.api.nvim_exec("let g:startify_bookmarks = systemlist(\"cut -sd' ' -f 2- ~/.NERDTreeBookmarks\")", true)

vim.api.nvim_exec("let startify_lists = [{ 'type': 'bookmarks', 'header': ['   Bookmarks']      },{ 'type': 'files',     'header': ['   Files']          },{ 'type': 'sessions',  'header': ['   Sessions']       }]", true)
