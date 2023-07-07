# frozen_string_literal: true

class PrimaryButtonComponent < ViewComponent::Base
  def initialize(btn_name: nil, form: nil, btn_path: nil, data: nil, is_link: nil, is_form: nil)
    @btn_name = btn_name
    @btn_path = btn_path
    @data = data
    @is_link = is_link
    @is_form = is_form
    @form = form
  end
end
