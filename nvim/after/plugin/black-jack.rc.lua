local status, game = pcall(require, "blackjack")
if (not status) then return end

game.setup {
}
