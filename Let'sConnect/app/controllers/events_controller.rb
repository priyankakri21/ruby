class EventsController < ApplicationController
	layout 'welcome'
	def index
		@event = Event.all
	end
	def create
		#abort(event_params.inspect())
		@event = Event.new(event_params)
		if @event.save
			EventMailer.with(event: @event).welcome_to_event.deliver_later
			redirect_to event_path
			flash[:sucess] = 'Join successfully  in the event '
		else 
			redirect_to '/'
			flash[:error] = 'Sry this is error in event joining'
		end

	end
	private

		def event_params
			params.require(:event).permit(:name, :email, :contact, :course)
		end
end
