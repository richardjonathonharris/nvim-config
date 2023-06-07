local M = {}

local navic = require "nvim-navic"

local blue = "#7393b3"

vim.api.nvim_set_hl(0, "WinBarFilename", { fg = blue })
vim.api.nvim_set_hl(0, "WinBarContext", { fg = blue })

M.winbar_filetype_exclude = {
    "help",
    "startify",
    "dashboard",
    "packer",
    "neogitstatus",
    "NvimTree",
    "Trouble",
    "alpha",
    "lir",
    "Outline",
    "spectre_panel",
    "toggleterm",
}

local excludes = function()
    if vim.tbl_contains(M.winbar_filetype_exclude, vim.bo.filetype) then
        vim.opt_local.winbar = nil
        return true
    end
    return false
end

local get_buf_option = function(opt)
    local status_ok, buf_option = pcall(vim.api.nvim_buf_get_option, 0, opt)
    if not status_ok then
        return nil
    else
        return buf_option
    end
end

local function get_modified()
    if get_buf_option "mod" then
        local mod = " "
        return "%#WinBarFinename#" .. mod .. " " .. "%t" .. "%*"
    end
    return "%#WinBarFilename#" .. "%t" .. "%*"
end

local is_empty = function(s)
    return s == nil or s == ""
end

local function get_location()
    local location = navic.get_location()
    if not is_empty(location) then
        return "%#WinBarContext#" .. " " .. ">" .. " " .. location .. "%*"
    end
    return ""
end

function M.get_winbar()
    if excludes() then
        return ""
    end
    if navic.is_available() then
        return "%#WinBarSeparator#"
            .. "%="
            .. ""
            .. "%+"
            .. get_modified()
            .. get_location()
            .. ""
            .. "%*"
    else
        return "%#WinBarSeparator#" .. " %=" .. "" .. "%*" .. get_modified() .. "%#WinBarSeparator#" .. "" .. "%*"
  end
end

return M

