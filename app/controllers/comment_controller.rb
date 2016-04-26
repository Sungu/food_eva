class CommentController < ApplicationController
  def create
    Comment.create(user_id: current_user.id, 
                  post_id: params[:post_id].to_i,
                  comment: params[:msg],
                  score: params[:rating].to_i)
    redirect_to :back
  end

  def destroy
  end
end
