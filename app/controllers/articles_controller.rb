class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]
    skip_before_action :authorize # Skip authorization for the create action

    # Index action to list all articles
    def index
      @articles = Article.all
      render json: @articles
    end
  
    # Show action to display a specific article
    def show
      render json: @article
    end
  
    # New action to create a new article
    def new
      @article = Article.new
    end
  
    # Create action to save a new article
    def create
      @article = Article.new(article_params)
      if @article.save
        render json: @article, status: :created
      else
        render json: { errors: @article.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    # Edit action to edit a specific article
    def edit
    end
  
    # Update action to update a specific article
    def update
      if @article.update(article_params)
        render json: @article, status: :ok
      else
        render json: { errors: @article.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    # Destroy action to delete a specific article
    def destroy
      @article.destroy
      render json: { message: 'Article was successfully destroyed' }, status: :ok
    end
  
    private
  
    def set_article
      @article = Article.find(params[:id])
    end
  
    def article_params
      params.require(:article).permit(
        :user_id,
        :donation_type_id,
        :title,
        :content
      )
    end
end
  