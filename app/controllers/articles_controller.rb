class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:notice] = 'Your content has been created'
      redirect_to @article
    else
      flash[:alert] = 'There was a problem creating your content'
      render :new
    end
  end

  def update
    @article.update(article_params)

    if @article.save
      flash[:notice] = 'Your content has been updated'
      redirect_to @article
    else
      flash[:alert] = 'There was a problem updating your content'
      render :edit
    end
  end

  def destroy
    @article.destroy

    flash[:notice] = "You have deleted #{@article.title}"
    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end

    def set_article
      @article = Article.find(params[:id])
    end
end
