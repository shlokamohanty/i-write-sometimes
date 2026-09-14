Jekyll::Hooks.register [:pages, :posts], :pre_render do |doc|
  if doc.content
    doc.content = doc.content.gsub(/==(.+?)==/, '<mark>\1</mark>')
  end
end
