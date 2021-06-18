class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def search
    respond_to do |format|
      format.turbo_stream do
        @articles = Article.where('title LIKE :title', title: "%#{params[:q]}%")
        render turbo_stream: turbo_stream.replace(:article_results, partial: 'articles/article_results')
      end
    end
  end
end
