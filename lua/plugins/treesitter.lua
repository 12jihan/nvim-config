-- Better syntax highlighting for C++
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "c",
      "cpp",
      "cmake",
      "make",
      "ninja",
    },
  },
}
