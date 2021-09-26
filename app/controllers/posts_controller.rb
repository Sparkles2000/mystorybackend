class PostsController < ApplicationController
    def index
        posts = Post.all
        render json: posts, only: [:title, :text]
    end
    def show
        post = Post.find(params[:id])
        render json: post, include: :comments, exclude: [:id, :created_at, :updated_at]
    rescue ActiveRecord::RecordNotFound
        render json: "Post not found", status: :not_found
    end
    def create
        post = Post.create(post_params)
        render json: post, status: :created
    end
    def update
        post = Post.find_by(id: params[:id])
        post.update(post_params)
        render json: post
    end
    def destroy
        post = Post.find_by(id: params[:id])
        post.destroy
        head :no_content
    end

    private

    def post_params
        params.permit(:title, :text, :user_id)
    end  
end