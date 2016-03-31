# The ApplicationHelper
module ApplicationHelper
  # Initializes a Markdown parser
  markdown = Redcarpet::Markdown.new(renderer, extensions = {})
end
