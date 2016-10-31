class YazilarController < ApplicationController
	def index
		@yazilar = Yazi.all
	end
	def show
		@yazi = Yazi.find(params[:id])
	end
	def new
		@yeni_yazi = Yazi.new
	end
	def create
		@yazi = Yazi.new(yazi_params)
		if @yazi.save
			redirect_to "/yazilar/index"
		else
			render "/yazi/new"
		end

	end
	def edit
		@edit_yazi = Yazi.find(params[:id])
	end
	def update
		@yazi = Yazi.find(params[:id])
		if @yazi.update_attributes(edit_yazi_params)
			redirect_to(:action => 'show', :id => @yazi.id)	
		else	
			render 'edit'
		end

	end

	def destroy
		@yazi = Yazi.find(params[:id])
		if @yazi.destroy
			redirect_to '/yazilar/index'
		else
			redirect_to(:action => 'show', :id => params[:id])
		end
	end

	private
	def yazi_params
		params.require(:yazi).permit(:title, :content)
	end
	def edit_yazi_params
		params.require(:yazi).permit(:title, :content)
	end
end
