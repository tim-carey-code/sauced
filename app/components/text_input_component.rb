# frozen_string_literal: true

class TextInputComponent < ViewComponent::Base
  def initialize(label:)
    super()
    @label = label
  end
end
