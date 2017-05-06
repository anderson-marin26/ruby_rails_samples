class ArticlesController < ApplicationController
	def show
		@article = Article.find(params[:id])
	end

	def new
	end

	def create
		@article = Article.new(article_params) #Instantiate model and passing the parameters

		@article.save #Saves the model
		redirect_to @article
	end

	private
		def article_params
			params.require(:article).permit(:title, :text)
		end
end
