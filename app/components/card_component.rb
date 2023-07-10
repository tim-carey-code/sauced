# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  def initialize(container_classes: 'w-96', img_src: nil, img_alt: nil)
    @img_src = img_src
    @img_alt = img_alt
    @container_classes = container_classes
  end
end
