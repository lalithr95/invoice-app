class DashboardController < ApplicationController
	def index
    if user_signed_in?
      render 'index'
    else
      render temlate: 'dashboard/auth'
    end
	end
end
