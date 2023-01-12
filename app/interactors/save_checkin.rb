class SaveCheckin
  include Interactor

  delegate :user, :params, :hotsauce, to: :context

  def call
    checkin = Checkin.new(params.merge({ user: user, hotsauce: hotsauce }))
    
    if checkin.save
      context.feedable = checkin
    else
      context.fail!(message: checkin.errors.full_messages)
    end
  end
end
