require'nvim-treesitter.configs'.setup {
  -- 添加不同语言
  ensure_installed = { "vim", "vimdoc", "bash", "json", "toml", "yaml", "csv", "fish", "lua", "python", "javascript", "typescript", "css", "markdown", "markdown_inline" },

  highlight = { enable = true },
  indent = { enable = true },

  -- 不同括号颜色区分
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}

