class WelcomeController < ApplicationController
before_action :require_login
	def show
		@user = User.find(current_user.id)
		@perfil = @user.perfils.find_by_ativo(true)
	end

end

