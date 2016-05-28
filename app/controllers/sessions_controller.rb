class SessionsController < ApplicationController


	def create
		auth = request.env["omniauth.auth"]
		session[:omniauth] = auth
		user = User.sign_in_from_omniauth(auth)
		session[:user_id] = user.id
		redirect_to root_url, notice: "SIGNED IN"
	end

	def destroy
		session[:user_id] = nil
		session[:omniauth] = nil
		redirect_to root_url, notice: "SIGNED OUT"
	end

	def login
	end

	def send_login
		if login_params[:password] = "Paloma001"
			session[:user_id] = 1
			redirect_to '/'
		end
	end

	def logout
		session[:user_id] = nil
		redirect_to root_url
	end

	private

	def login_params
		params.require(:user).permit(:password)
	end

end
