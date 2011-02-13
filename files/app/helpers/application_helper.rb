module ApplicationHelper

  # Help individual pages to set their HTML titles
  def title(text)
    content_for(:title) { text }
  end

  # Help individual pages to set their HTML meta descriptions
  def description(text)
    content_for(:description) { text }
  end

end
