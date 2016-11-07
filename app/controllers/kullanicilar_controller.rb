class KullanicilarController < ApplicationController
	def new
		@user = Kullanici.new
	end

	def create 
	  @user = Kullanici.new(user_params) 
	  if @user.save 
	    session[:user_id] = @user.id 
	    redirect_to '/' 
	  else 
	    redirect_to '/kayitol' 
		end
	end 

	private
  	def user_params
   	 	params.require(:kullanici).permit(:username, :first_name, :last_name, :email, :password)
 	end

 	
end
