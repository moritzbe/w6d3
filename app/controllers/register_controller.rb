class RegisterController < ApplicationController
	def register
		#use a conventional form
	end

	def login
		cats = Cat.all
		cat = cats.where(name: params[:name]).first
		if cat.password_digest == params[:password]
			flash[:notice] = "You (#{cat.name}) are now logged in"
			session[:cat_id] = cat.id

			redirect_to root_path
		else
			flash[:notice] = "Wrong PW or wrong user"
			redirect_to '/register'
		end
	end

	def logout
		session[:cat_id] = nil
		redirect_to root_path
	end


end
