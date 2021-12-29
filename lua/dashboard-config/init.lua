vim.g.dashboard_custom_header = {
 [[                           ▓▓▓▓▓▓▓     ]],
 [[                       ▓▓▓▓▓▓▓▓▓▓▓▓▓▓  ]],
 [[                     ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓]],
 [[                   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓]],
 [[  ▓▓             ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓]],
 [[▓▓▓▓▓▓▓        ▓▓▓▓▓▓▓▓▓▓▓▓▓ ▒▓▓▓▓▓▓▓▓▓]],
 [[▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓    ░▓▓▓▓▓▓▓▓▓]],
 [[  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓      ░▓▓▓▓▓▓▓▓▓]],
 [[    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓         ▓▓▓▓▓▓▓▓▓▓]],
 [[      ▓▓▓▓▓▓▓▓▓▓▓▓           ▓▓▓▓▓▓▓▓▓▓]],
 [[    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓         ▓▓▓▓▓▓▓▓▓▓]],
 [[  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓      ▒▓▓▓▓▓▓▓▓▓]],
 [[▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓▓    ▒▓▓▓▓▓▓▓▓▓]],
 [[▓▓▓▓▓▓▓        ▓▓▓▓▓▓▓▓▓▓▓▓▓ ▒▓▓▓▓▓▓▓▓▓]],
 [[  ▓▓             ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓]],
 [[                   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓]],
 [[                     ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓]],
 [[                        ▓▓▓▓▓▓▓▓▓▓▓▓▓  ]],
 [[                          ▓▓▓▓▓▓▓      ]],
 [[                                       ]],
 [[             Start Editing             ]]
}

vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
    a = {description = {'  File Browser       '}, command = 'Telescope file_browser'},
    d = {description = {'  Search Text        '}, command = 'Telescope live_grep'},
    b = {description = {'  Recent             '}, command = 'Telescope oldfiles'},
    f = {description = {'  Git Status         '}, command = 'Telescope git_status'}
}

vim.g.dashboard_custom_footer = {
  [[            Visual Studio Code               ]],
  [[             Editing evolved                 ]]
}
