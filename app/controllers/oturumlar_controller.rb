class OturumlarController < ApplicationController
	def new

	end

	def destroy 
	  session[:user_id] = nil 
	  redirect_to '/' 
	end

	def create
	  @user = Kullanici.find_by_email(params[:oturum][:email])
	  if @user && @user.authenticate(params[:oturum][:password])
	    session[:user_id] = @user.id
	    redirect_to '/'
	  else
	    redirect_to '/girisyap'
	  end 
	end

end
