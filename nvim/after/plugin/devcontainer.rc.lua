local status, dev = pcall(require, "nvim-dev-container")
if (not status) then return end

dev.setup()
