module ApplicationHelper

  # Use within views to set the page's HTML title
  def title(text)
    content_for(:title) { text }
  end

  # Use within views to set the page's HTML meta description
  def description(text)
    content_for(:description) { text }
  end

end
