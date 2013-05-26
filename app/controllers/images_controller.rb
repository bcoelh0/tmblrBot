class ImagesController < ApplicationController
	def index
	end

	def new
		@image = Image.new
	end

	def create
		#debugger
		@image = Image.new(image_params)
		if @image.save
		  render :text => 'OK'
		  #redirect_to images_path
		else
		  render "new"
		end
	end


	private
 
	def image_params
	  params.require(:image).permit!
	end




end
