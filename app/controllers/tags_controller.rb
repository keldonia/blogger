class TagsController < ApplicationController

	def show
		@tag = Tag.find(params[:id])
	end

	def index
		@tags = Tag.all
	end

	def destroy
		@tag = Tag.find(params[:id])
		@article.destroy

		flash.notice = "Tag #{@tag.name} Deleted!"

		redirect_to index
	end
end
