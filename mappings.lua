
return {
  n = {
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>b"] = { name = "Buffers" },
    ["<A-j>"] = { "<cmd>m .+1<cr>==", desc = "Move down" },
    ["<A-k>"] = { "<cmd>m .-2<cr>==", desc = "Move up" },
  },
  t = {
    ["<esc>"] = false,
  },
  i = {
    ["<A-j>"] = { "<esc><cmd>m .+1<cr>==gi", desc = "Move down" },
    ["<A-k>"] = { "<esc><cmd>m .-2<cr>==gi", desc = "Move up" },
  },
  v = {
    ["<A-j>"] = { ":m '>+1<cr>gv=gv", desc = "Move down" },
    ["<A-k>"] = { ":m '<-2<cr>gv=gv", desc = "Move up" },
  },
}

