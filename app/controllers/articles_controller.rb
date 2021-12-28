class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description))
      flash[:notice] = "Article was updated successfully."
      redirect_to @article
    else
      render 'edit'
    end
  end
  

  def create
    @article = Article.new(title: params[:title], description: params[:description])
    if @article.save
      flash[:notice] = "Article created susessfuly."
      redirect_to  article_path(@article)
    else
      render 'new'
    end
  end
end
