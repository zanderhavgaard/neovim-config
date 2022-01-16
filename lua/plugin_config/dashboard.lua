-- Preview settings
-- vim.g.dashboard_preview_pipeline = "lolcat"
-- vim.g.dashboard_preview_command = "cat"
-- vim.g.dashboard_preview_file = "~/.config/nvim/lua/plugin_config/dashboard.cat"
-- vim.g.dashboard_preview_file_height = 20
-- vim.g.dashboard_preview_file_width = 67

-- get the current version of nvim
local nvim_version = "nvim is: " .. io.popen("nvim --version | head -n 1"):read()

local alt_header = {
    [[              `..-:/++++/:-..`                ]],
    [[           `.:+syyyysssssyyyyyss/.`           ]],
    [[         .:+o+//:--..```...--:+ooso/.         ]],
    [[      `:++/:-.`  `...--...```  `.:++o+:`      ]],
    [[     :yo/-.      :ssssssssss+.     .:+sy:     ]],
    [[   `sy/:` .      ``````````.-`       `/+ys`   ]],
    [[  `h+/. .s/`  ```...+++//-..```    :/. ./+y`  ]],
    [[ `y/:. -s- ..``....-------.....`.`  ./- `:/o` ]],
    [[ //:. `+` ./+-..----:://::---..---`   .  `:/: ]],
    [[./-.  ``  `...---::::/++/::::--...``      -::`]],
    [[-:-`     ``...--//////++/////:--...`      `::.]],
    [[-:-      ``..--::///+ooo+////::--..``      ::.]],
    [[.:-      ``..--::///+syyo+///::--..``      -:.]],
    [[`:-      ``..--::///++oo+////::--..``      ::`]],
    [[`-:`     ``..---:://////////::--..``      `::`]],
    [[ .:-      ``...--::://///:::---...``      -:. ]],
    [[ `::.      ``...----:::::----....``      .::` ]],
    [[  `:/.      ```....-------.....``       .//`  ]],
    [[   `/+:       ````.........````        /yo.   ]],
    [[    `/yo.         `````````          `ods`    ]],
    [[      -++:.                        `:++-      ]],
    [[       `.://-`                  `.:/:.`       ]],
    [[          `-///:-....```...--:://:-`          ]],
    [[             `.:/+oyyyhhhhhys/:.`             ]],
    [[                 ``.------..`                 ]]
}

-- build string list to be used as header
-- [[ ]] is a literal string and does not need to escape characters
local header = {
    [[      .            .      ]],
    [[    .,;.           :,.    ]],
    [[  .,;;;,,.         ccc;.  ]],
    [[.;c::::,,,.        ccccc: ]],
    [[.::cc::,,,,,.      cccccc.     _   _        __      ___]],
    [[.cccccc;;;;;;.     llllll.    | \ | |       \ \    / (_)]],
    [[.cccccc.,;;;;;;.   llllll.    |  \| | ___  __\ \  / / _ _ __ ___]],
    [[.cccccc  .;;;;;;.  oooooo.    | . ` |/ _ \/ _ \ \/ / | | |_ ` _ \]],
    [[.lllllc   .;;;;;;;.oooooo.    | |\  |  __/ (_) \  /  | | | | | | |]],
    [[.lllllc     ,::::::looooo.    |_| \_|\___|\___/ \/   |_|_| |_| |_|]],
    [[.llllll      .:::::lloddd.]],
    [[.looool       .;::coooodo.]],
    [[  .cool         .ccoooc.  ]],
    [[    .co          .:o:.    ]],
    [[      .           ..      ]],
    [[]],
    [[───────────────────────────────────────────────────────────────────]],
    [[Zanders customized NeoVim | github.com/zanderhavgaard/neovim-config]],
    [[]],
    [[~ Happy Hacking! ~]],
    [[]],
    nvim_version
}

-- set the custom header
vim.g.dashboard_custom_header = alt_header

-- what fuzzy finder to use
vim.g.dashboard_default_executive = "telescope"
