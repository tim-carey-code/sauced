# frozen_string_literal: true

class FileInputComponent < ViewComponent::Base
  def initialize(label:)
    super()
    @label = label
  end
end
