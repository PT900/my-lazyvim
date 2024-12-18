-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Remove comment on newlining
vim.api.nvim_create_autocmd("BufEnter", {
  group = augroup("no_comment_on_newline"),
  callback = function()
    vim.opt.formatoptions = "jqlnt"
  end,
})

-- Set indent to 2 for specific language (dart and http)
vim.api.nvim_create_autocmd("BufEnter", {
  group = augroup("indent_options"),
  callback = function()
    if vim.bo.filetype == "dart" or "http" then
      vim.opt_local.shiftwidth = 2
      vim.opt_local.tabstop = 2
    end
  end,
})

-- Disable flash search as default
vim.api.nvim_create_autocmd("CmdlineLeave", {
  group = augroup("flash_search_disable_default"),
  pattern = "/",
  callback = function()
    require("flash").toggle(false)
  end,
})
