-- ~/.config/nvim/lua/config/tmux.lua
vim.g.clipboard = {
  name = "tmux",
  copy = {
    ["+"] = { "tmux", "load-buffer", "-" },
    ["*"] = { "tmux", "load-buffer", "-" },
  },
  paste = {
    ["+"] = { "tmux", "save-buffer", "-" },
    ["*"] = { "tmux", "save-buffer", "-" },
  },
  cache_enabled = 1,
}

-- Better tmux integration
if vim.env.TMUX then
  -- Enable true color support
  vim.opt.termguicolors = true
  vim.opt.t_Co = 256

  -- Fix cursor shape in tmux
  vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50"
end
