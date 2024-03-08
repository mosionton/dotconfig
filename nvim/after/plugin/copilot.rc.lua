local status, cp = pcall(require, "copilot")
if (not status) then return end

cp.setup {
  -- suggestion = { enabled = true },
  -- panel = { enabled = true },
}
