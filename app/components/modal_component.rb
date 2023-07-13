# frozen_string_literal: true

class ModalComponent < ViewComponent::Base
  def initialize(modal_title:, modal_id:, btn_path: nil, btn_name: nil, btn_method: nil, btn_classes: nil)
    super()
    @modal_title = modal_title
    @modal_id = modal_id
    @btn_path = btn_path
    @btn_name = btn_name
    @btn_method = btn_method
    @btn_classes = btn_classes
  end
end
