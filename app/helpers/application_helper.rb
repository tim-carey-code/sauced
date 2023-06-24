# frozen_string_literal: true

module ApplicationHelper
  def pretty_date(input)
    input.strftime('%b %d, %Y')
  end
end
