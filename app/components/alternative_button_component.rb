class AlternativeButtonComponent < ViewComponent::Base
  def initialize(btn_name: nil, btn_path: nil, is_link: nil, is_form: nil, form: nil)
    @btn_name = btn_name
    @btn_path = btn_path
    @is_link = is_link
    @is_form = is_form
    @form = form
  end
end
