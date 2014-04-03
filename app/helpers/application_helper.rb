module ApplicationHelper
  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end
  
  def markdown(text)
    render_options = {
      filter_html:     true,
      hard_wrap:       true, 
      link_attributes: { rel: 'nofollow' }
    }
    renderer = Redcarpet::Render::HTML.new(render_options)

    extensions = {
      autolink:           true,
      fenced_code_blocks: true,
      lax_spacing:        true,
      no_intra_emphasis:  true,
      strikethrough:      true,
      superscript:        true

    }
    Redcarpet::Markdown.new(renderer, extensions).render(text).html_safe
  end
end
