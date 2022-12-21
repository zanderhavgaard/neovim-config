-- get the current version of nvim
local nvim_version = "NeoVim is: " .. io.popen("nvim --version | head -n 1"):read()

local alt2_header = {
	[[        .-::::-.        ]],
	[[    `.://::::::/+/-`    ]],
	[[  `//-`` -///::``.:+/`  ]],
	[[ `+:-:```.-::..`  -.:+` ]],
	[[ /-`-`:..--::--..``. -: ]],
	[[`:`  `.-://++//--.`  `:`]],
	[[`-   `.-:/+ss//:-.`   :`]],
	[[ -`  `.--:////:--.`  `: ]],
	[[ .-   `..--::--..`   -. ]],
	[[  ./.   ``....``   `+-  ]],
	[[   .:-``         `-:.   ]],
	[[     `----::://:-.`     ]],
	[[         `.---.         ]],
	[[]],
	[["I'm sorry Dave, I'm afraid I can't do that."]],
	[[]],
	[[───────────────────────────────────────────────────────────────────]],
	[[Zanders customized NeoVim | github.com/zanderhavgaard/neovim-config]],
	[[]],
	[[~ Happy Hacking! ~]],
	[[]],
	nvim_version,
	[[]],
}

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
	[[                 ``.------..`                 ]],
}

-- build string list to be used as header
-- [[ ]] is a literal string and does not need to escape characters
local header = {
	[[      .            .                                              ]],
	[[    .,;.           :,.                                            ]],
	[[  .,;;;,,.         ccc;.                                          ]],
	[[.;c::::,,,.        ccccc:                                         ]],
	[[.::cc::,,,,,.      cccccc.     _   _        __      ___           ]],
	[[.cccccc;;;;;;.     llllll.    | \ | |       \ \    / (_)          ]],
	[[.cccccc.,;;;;;;.   llllll.    |  \| | ___  __\ \  / / _ _ __ ___  ]],
	[[.cccccc  .;;;;;;.  oooooo.    | . ` |/ _ \/ _ \ \/ / | | |_ ` _ \ ]],
	[[.lllllc   .;;;;;;;.oooooo.    | |\  |  __/ (_) \  /  | | | | | | |]],
	[[.lllllc     ,::::::looooo.    |_| \_|\___|\___/ \/   |_|_| |_| |_|]],
	[[.llllll      .:::::lloddd                                        .]],
	[[.looool       .;::coooodo.                                        ]],
	[[  .cool         .ccoooc.                                          ]],
	[[    .co          .:o:.                                            ]],
	[[      .           ..                                              ]],
	[[]],
	[[───────────────────────────────────────────────────────────────────]],
	[[Zanders customized NeoVim | github.com/zanderhavgaard/neovim-config]],
	[[]],
	[[~ Happy Hacking! ~]],
	[[]],
	nvim_version,
	[[]],
}

local home = os.getenv("HOME")
local db = require("dashboard")
db.custom_header = alt2_header
db.custom_center = {
	{
		icon = "  ",
		desc = "New file                                ",
		action = "new",
		shortcut = "SPC f n",
	},
	{
		icon = "  ",
		desc = "Telescope                               ",
		action = "Telescope find_files find_command=rg,--hidden,--files",
		shortcut = "SPC f f",
	},
}
