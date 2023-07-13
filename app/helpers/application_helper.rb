# frozen_string_literal: true

module ApplicationHelper
  include Pagy::Frontend

  def pretty_date(input)
    input.strftime('%b %d, %Y')
  end

  def active_link_class(path)
    request.path == path ? 'link-primary' : 'text-white'
  end
end
