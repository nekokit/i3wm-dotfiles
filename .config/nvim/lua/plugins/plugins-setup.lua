local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  "shaunsingh/nord.nvim", -- 主题
  "nvim-lualine/lualine.nvim", -- 状态栏
  {
    "nvim-tree/nvim-tree.lua", -- 文档树
    dependencies = {"nvim-tree/nvim-web-devicons"}
  },
  "christoomey/vim-tmux-navigator", -- 用ctl-hjkl来定位窗口
  "nvim-treesitter/nvim-treesitter", -- 语法高亮
  {
    "p00f/nvim-ts-rainbow", -- 不同括号颜色区分
    dependencies = {"nvim-treesitter/nvim-treesitter"}
  },
  "numToStr/Comment.nvim", -- gcc和gc注释
  "akinsho/bufferline.nvim", -- buffer分割线
  "lewis6991/gitsigns.nvim", -- 左则git提示
}

local opts = {}

require("lazy").setup(plugins, opts)
