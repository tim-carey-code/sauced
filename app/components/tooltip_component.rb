# frozen_string_literal: true

class TooltipComponent < ViewComponent::Base
  def initialize(text:)
    super()
    @text = text
  end
end
