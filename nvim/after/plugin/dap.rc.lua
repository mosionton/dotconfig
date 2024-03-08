local status, dap = pcall(require, "dap")
if (not status) then return end

dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
}
