class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
        render json: users, only: [:alias, :img_url, :age, :story]
    end
    def show
        user = User.find(params[:id])
        render json: user, include: :posts, exclude: [:id, :created_at, :updated_at]
    rescue ActiveRecord::RecordNotFound
        render json: "User not found", status: :not_found
    end
    def create
        user = User.create(user_params)
        render json: user, status: :created
    end
    def update
        user = User.find_by(id: params[:id])
        user.update(user_params)
        render json: user
    end
    def destroy
        user = User.find_by(id: params[:id])
        user.destroy
        head :no_content
    end

    private

    def user_params
        params.permit(:alias, :img_url, :age, :story)
    end  
end