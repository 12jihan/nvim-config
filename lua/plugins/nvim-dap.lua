-- Debugging support
return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
  },
  opts = function()
    local dap = require("dap")

    -- GDB/LLDB configuration for C++
    dap.adapters.lldb = {
      type = "executable",
      command = "/usr/bin/lldb", -- Adjust path as needed
      name = "lldb",
    }

    dap.configurations.cpp = {
      {
        name = "Launch",
        type = "lldb",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/build/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        args = {},
      },
    }

    -- Use the same config for C
    dap.configurations.c = dap.configurations.cpp
  end,
}
