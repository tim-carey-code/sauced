# frozen_string_literal: true

module ApplicationHelper
  def pretty_date(input)
    input.strftime('%b %d, %Y')
  end

  def active_link_class(path)
    request.path == path ? 'nav-link-active' : 'nav-link-not-active'
  end
end
