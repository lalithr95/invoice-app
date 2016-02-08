class DashboardController < ApplicationController
	def index
    if user_signed_in?
      render 'index'
    else
      render template: 'dashboard/auth'
    end
	end
end
