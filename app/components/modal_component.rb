class ModalComponent < ViewComponent::Base
  attr_reader :resource

  def initialize(modal_title:, primary_button_name:, modal_body:, btn_style:, btn_method:, resource:)
    @modal_title = modal_title
    @primary_button_name = primary_button_name
    @modal_body = modal_body
    @btn_style = btn_style
    @btn_method = btn_method
    @resource = resource
  end
end
