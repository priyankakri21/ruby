class EventMailer < ApplicationMailer
	default from: 'samarsingh748@gmail.com'
 
  def welcome_to_event
    @event = params[:event]
    mail(to: @event.email,subject: 'You have join successfully for this event')
  end
end
