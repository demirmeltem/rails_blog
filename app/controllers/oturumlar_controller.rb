class OturumlarController < ApplicationController
	def new

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
