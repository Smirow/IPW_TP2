class ArticlesController < ApplicationController
  def index
    @articles = Article.paginate(:page => params[:page], :per_page => 3)
  end

  def show
    @article = Article.exists?(params[:id].to_i) ? Article.find(params[:id].to_i) : (redirect_to "/")   
  end

  def new
    @article = Article.new
  end

  def create
   @article = Article.new(article_params)
  if @article.save
    redirect_to "/"
  else
    redirect_to "/new"
  end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
    
end
