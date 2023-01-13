class SaveHotSauce
  include Interactor

  delegate :user, :params, to: :context

  def call
    @hotsauce = Hotsauce.new(params)

    if @hotsauce.save
      context.hotsauce = @hotsauce
    else
      context.hotsauce = @hotsauce
      context.fail!(message: @hotsauce.errors.full_messages.join(", "))
    end
  end
end
