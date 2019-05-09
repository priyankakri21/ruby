class NoticesController < ApplicationController
	layout 'welcome'
	def index
		@notice = Notice.all

	end
	# def create
	# 	@notice = Notice.new(notice_params)
	# 	@notice.save

	# end
	
	private

		def notice_params
			params.require(:notice).permit( :title,:description,:document)
		end

end
