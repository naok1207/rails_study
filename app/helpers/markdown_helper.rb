module MarkdownHelper
  # def markdown(text)

  #   unless @markdown
  #     options = {
  #       filter_html: true,
  #       autolink: true,
  #       space_after_headers: true,
  #       no_intra_emphasis: true,
  #       fenced_code_blocks: true,
  #       tables: true,
  #       hard_wrap: true,
  #       xhtml: true,
  #       lax_html_blocks: true,
  #       strikethrough: true
  #     }
  #     renderer = Redcarpet::Render::HTML.new(options)
  #     @markdown = Redcarpet::Markdown.new(renderer)
  #   end

  #   @markdown.render(text).html_safe
  # end
  def markdown(content)
    return '' unless content.present?
    @options ||= {
        filter_html: true,
        autolink: true,
        space_after_headers: true,
        space_after_headers: true,
        fenced_code_blocks: true,
        underline: true,
        highlight: true,
        footnotes: true,
        tables: true,
        hard_wrap: true,
        xhtml: true,
        link_attributes: {rel: 'nofollow', target: "_blank"},
        strikethrough: true
    }
    @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, @options)
    @markdown.render(content).html_safe
  end
end
