class Mypage::ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
  end

  def create
    @mypage_article = current.mypage_article.new(mypage_article_params)

    if params[:back].present?
      render :new
      return
    end

    if @mypage_article.save
      redirect_to articles_url, notice: "タスク「#{@mypage_article.name}」を登録しました。"
    else
      render :new
    end
  end

  def destroy
  end

  def confirm_new
    @mypage_article = current.mypage_articles.new(mypage_article_params)
    render :new unless @mypage_articles.valid?
  end
end
