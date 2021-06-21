-- local vim = vim
-- local mode = vim.fn.mode
-- local galaxyline = require("galaxyline")
-- galaxyline.short_line_list = {"NvimTree", "dashboard", "startify", "packer"}
local colors = require("themes.onedark")

local vi_modes = {
    n = "NORMAL",
    no = "OPERATOR-PENDING",
    i = "INSERT",
    ic = "INSERT",
    v = "VISUAL",
    V = "VISUAL-LINE",
    [""] = "VISUAL-BLOCK",
    s = "SELECT",
    S = "SELECT-LINE",
    ["^S"] = "SELECT-LINE",
    R = "REPLACE",
    Rv = "REPLACE",
    c = "COMMAND",
    cv = "Ex",
    ce = "Vim Ex",
    r = "PROMPT",
    r = "PROMPT",
    ["r?"] = "PROMPT",
    ["!"] = "SHELL",
    t = "TERMINAL"
}

local gl = require("galaxyline")
-- local colors = require("galaxyline.theme").default
local condition = require("galaxyline.condition")
local gls = gl.section
gl.short_line_list = {"dashboard", "NvimTree", "vista", "dbui", "packer"}

-- left

gls.left[1] = {
    ViMode = {
        provider = function()
            -- auto change color according the vim mode
            local mode_color = {
                n = colors.green,
                no = colors.green,
                i = colors.red,
                v = colors.blue,
                [""] = colors.blue,
                V = colors.blue,
                c = colors.purple,
                s = colors.orange,
                S = colors.orange,
                [""] = colors.orange,
                ic = colors.yellow,
                R = colors.purple_alt,
                Rv = colors.purple_alt,
                cv = colors.red,
                ce = colors.red,
                r = colors.cyan,
                rm = colors.cyan,
                ["r?"] = colors.cyan,
                ["!"] = colors.red,
                t = colors.red
            }
            vim.api.nvim_command("hi GalaxyViMode guibg=" .. mode_color[vim.fn.mode()])
            local vi_mode = vim.fn.mode()
            return "  " .. vi_modes[vi_mode] .. " "
        end,
        highlight = {colors.dark_grey, colors.green, "bold"},
        separator = " "
    }
}

gls.left[2] = {
    LineInfo = {
        provider = "LineColumn",
        separator = " ",
        separator_highlight = {"NONE", colors.bg},
        highlight = {colors.fg, colors.bg}
    }
}

gls.left[3] = {
    FileIcon = {
        provider = "FileIcon",
        condition = condition.buffer_not_empty,
        highlight = {require("galaxyline.provider_fileinfo").get_file_icon_color, colors.bg}
    }
}

gls.left[4] = {
    FileName = {
        provider = "FileName",
        separator = " ",
        condition = condition.buffer_not_empty,
        highlight = {colors.purple, colors.bg, "bold"}
    }
}

-- right

gls.right[1] = {
    DiagnosticError = {
        provider = "DiagnosticError",
        icon = "  ",
        highlight = {colors.red, colors.bg}
    }
}
gls.right[2] = {
    DiagnosticWarn = {
        provider = "DiagnosticWarn",
        icon = "  ",
        highlight = {colors.yellow, colors.bg}
    }
}

gls.right[3] = {
    DiagnosticHint = {
        provider = "DiagnosticHint",
        icon = "  ",
        highlight = {colors.cyan, colors.bg}
    }
}

gls.right[4] = {
    DiagnosticInfo = {
        provider = "DiagnosticInfo",
        icon = "  ",
        highlight = {colors.blue, colors.bg}
    }
}
gls.right[5] = {
    FileEncode = {
        provider = "FileEncode",
        condition = condition.hide_in_width,
        separator = " ",
        separator_highlight = {"NONE", colors.bg},
        highlight = {colors.blue, colors.bg, "bold"}
    }
}

gls.right[6] = {
    FileFormat = {
        provider = "FileFormat",
        condition = condition.hide_in_width,
        separator = " ",
        separator_highlight = {"NONE", colors.bg},
        highlight = {colors.green, colors.bg, "bold"}
    }
}

gls.right[7] = {
    GitIcon = {
        separator = " ",
        provider = function()
            return ""
        end,
        condition = condition.check_git_workspace,
        separator_highlight = {"NONE", colors.bg},
        highlight = {colors.red, colors.bg, "bold"}
    }
}

gls.right[8] = {
    GitBranch = {
        separator = " ",
        provider = "GitBranch",
        condition = condition.check_git_workspace,
        highlight = {colors.red, colors.bg, "bold"}
    }
}

gls.right[9] = {
    DiffAdd = {
        separator = " ",
        provider = "DiffAdd",
        condition = condition.hide_in_width,
        icon = " ",
        highlight = {colors.green, colors.bg}
    }
}
gls.right[10] = {
    DiffModified = {
        separator = " ",
        provider = "DiffModified",
        condition = condition.hide_in_width,
        icon = "柳",
        highlight = {colors.orange, colors.bg}
    }
}
gls.right[11] = {
    DiffRemove = {
        separator = " ",
        provider = "DiffRemove",
        condition = condition.hide_in_width,
        icon = " ",
        highlight = {colors.red, colors.bg}
    }
}

-- short_line

gls.short_line_left[1] = {
    BufferIcon = {
        provider = "BufferIcon",
        highlight = {colors.fg, colors.bg}
    }
}
gls.short_line_left[2] = {
    BufferType = {
        provider = "FileTypeName",
        separator = " ",
        separator_highlight = {"NONE", colors.bg},
        highlight = {colors.blue, colors.bg, "bold"}
    }
}

gls.short_line_left[3] = {
    SFileName = {
        provider = "SFileName",
        condition = condition.buffer_not_empty,
        highlight = {colors.fg, colors.bg, "bold"}
    }
}
