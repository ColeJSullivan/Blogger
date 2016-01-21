class TagsController < ApplicationController
	def index
		@tags = Tag.all
	end
	def show
		@tag = Tag.find(params[:id])
	end
	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy

		flash.notice = "Deleted Tag '#{@tag.name}.'"

		redirect_to action: :index
	end
end
