return {
  "jdhao/whitespace.nvim",
  event = "VimEnter",
  keys = {
    {
      "<S-F12>",
      "<cmd>StripTrailingWhitespace<cr>",
      { mode = { "n" }, noremap = true, desc = "Remove Trailing Whitespace" },
    },
  },
}
