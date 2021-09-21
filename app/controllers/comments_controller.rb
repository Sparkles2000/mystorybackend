class CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: comments, only: [:alias, :text]
    end
    def show
        comment = Comment.find(params[:id])
        render json: comment, exclude: [:id, created_at, :updated_at]
    rescue ActiveRecord::RecordNotFound
        render json: "Comment not found", status: :not_found
    end
    def create
        comment = Comment.create(comment_params)
        render json: comment, status: :created
    end
    def update
        comment = Comment.find_by(id: params[:id])
        comment.update(comment_params)
        render json: comment
    end
    def destroy
        comment = Comment.find_by(id: params[:id])
        comment.destroy
        head :no_content
    end
    
    private
    
    def comment_params
        params.permit(:alias, :text, :post_id)
    end  
end
