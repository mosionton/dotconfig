local status, gpt = pcall(require, "chatgpt")
if (not status) then return end

local home = vim.fn.expand("$HOME")
gpt.setup({
  api_key_cmd = "gpg --decrypt " .. home .. "/.kvm/.openai.gpg",
  openai_params = {
    max_tokens = 2000,
  }
})
