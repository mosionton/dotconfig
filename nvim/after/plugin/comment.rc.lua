local status, comment = pcall(require, "Comment")
if (not status) then
  print("not support comment")
  return
end

comment.setup {}
