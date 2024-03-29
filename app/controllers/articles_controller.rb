class ArticlesController < ApplicationController

  before_action :set_article, only: [:edit, :show, :destroy, :update]
  def index
    @article = Article.all.order("created_at DESC")
  end
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Successfully created article."
      redirect_to article_path(@article)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show

  end

  def edit

  end

  def update
    if @article.update(article_params)
      flash[:notice] = "Successfully updated article."
      redirect_to article_path(@article)

    else
      render :edit, status: :unprocessable_entity
    end
  end


  def destroy
    @article.destroy
    flash[:notice] = "Successfully destroyed article."
    redirect_to articles_path
  end




  private
  def set_article
    @article = Article.find(params[:id])
  end
  def article_params
    params.require(:article).permit(:title, :description)
  end
end
