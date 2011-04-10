module ApplicationHelper

  # Use within views to set the page's HTML title
  def title(text)
    content_for(:title) { text }
  end

  # Use within views to set the page's HTML meta description
  def description(text)
    content_for(:description) { text }
  end

  # Displays all flash messages in appropriately named divs for easy styling
  def flash_messages
    messages = flash.keys.collect { |key| flash_message(key, flash[key]) }
    content_tag(:div, messages.to_s.html_safe, :id => "flash-messages")
  end

  # Format a single flash message
  def flash_message(type, message)
    content_tag(:div, :class => "flash-message #{type.to_s}") do
      content_tag :p, message
    end
  end

end
