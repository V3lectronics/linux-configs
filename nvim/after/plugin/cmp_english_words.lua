local source_meta = {}

source_meta.new = function()
  local self = setmetatable({}, { __index = source_meta })
  self.words = {}
  self:load_words()
  return self
end

source_meta.get_keyword_pattern = function(self)
  return [[\w+]]
end

source_meta.load_words = function(self)
  local file = io.open(vim.fn.stdpath('config') .. '/english_words.txt', 'r')
  if file then
    for line in file:lines() do
      table.insert(self.words, line)
    end
    file:close()
  end
end

source_meta.complete = function(self, request, callback)
  local matches = {}
  local keyword_pattern = self:get_keyword_pattern()
  local keyword = string.match(request.context.cursor_before_line, keyword_pattern .. '$')

  if keyword then
    for _, word in ipairs(self.words) do
      if string.sub(word, 1, #keyword) == keyword then
        table.insert(matches, {
          label = word,
          kind = vim.lsp.protocol.CompletionItemKind.Text,
        })
      end
    end
  end

  callback(matches)
end

source_meta.get_debug_name = function(self)
  return 'english_words'
end

return source_meta
