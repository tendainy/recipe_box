class TagsController < ApplicationController
  def update
    tag = Tag.update(params[:id], params[:name])
    if tag
      render json: tag
    else
      render json: { error: 'The tag cannot be found' }, status: :not_found
    end
  end

  def delete
    tag = Tag.delete(params[:id])
    if tag
      render json: { message: 'You have successfully deleted the Tag' }
    else
      render json: { error: 'Tag not found' }, status: :not_found
    end
  end
end
