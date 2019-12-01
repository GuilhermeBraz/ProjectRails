class WelcomeController < ApplicationController
before_action :require_login
	def show
		@user = User.find(current_user.id)
		@perfils = @user.perfils.all
	end

end

