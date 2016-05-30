class HomeController < ApplicationController
	
	before_action :require_login

	before_action :set_auth
	
	def index
		@states = State.all
		states = @states
	end

	def data
		states = State.all
		render :json => states
	end

	def topStates
		chihuahua = State.find_by_estado("Chihuahua")
		guerrero = State.find_by_estado("Guerrero")
		michoacan = State.find_by_estado("Michoacán")
		sinaloa = State.find_by_estado("Sinaloa")
		render :json => {
			chihuahua: chihuahua,
			guerrero: guerrero,
			michoacan: michoacan,
			sinaloa: sinaloa
		}
	end

	private

	def set_auth
		@auth = session[:omniauth] if session[:omniauth]
	end

end
