class TagsController < ApplicationController
    def index
        tags = Tag.all
        render json: tags, only: :text
    end
    def show
        tag = Tag.find(params[:id])
        render json: tag
    rescue ActiveRecord::RecordNotFound
        render json: "Tag not found", status: :not_found
    end
    def create
        tag = Tag.create(tag_params)
        render json: tag, status: :created
    end
    def update
        tag = Tag.find_by(id: params[:id])
        tag.update(tag_params)
        render json: tag
    end
    def destroy
        tag = Tag.find_by(id: params[:id])
        tag.destroy
        head :no_content
    end

    private

    def tag_params
        params.permit(:text)
    end  
end