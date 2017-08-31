class CommentsController < ApplicationController

  def create
    # ideally create a comment in here
    message_info = params[:comment][:message]
    city_info = params[:comment][:city]
    comment = Comment.create({message: message_info, city: city_info})

    redirect_to comment_path(comment.id)
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def index
    @comments = Comment.all
  end
end
