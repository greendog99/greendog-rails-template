module ApplicationHelper

  # Use within views to set the page's HTML title
  def title(text)
    content_for(:title) { text }
  end

  # Use within views to set the page's HTML meta description
  def description(text)
    content_for(:description) { text }
  end

  # Displays all flash[] messages in appropriately named divs for easy styling
  def flash_messages
    messages = []
    flash.each do |type, message|
      messages << content_tag(:div, :class => "flash_message #{type.to_s}") do
        content_tag :p, message
      end
    end
    messages.to_s.html_safe
  end

end
