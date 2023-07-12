# frozen_string_literal: true

class SelectInputComponent < ViewComponent::Base
  def initialize(label:)
    super()
    @label = label
  end
end
