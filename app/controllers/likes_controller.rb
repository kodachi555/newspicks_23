class LikesController < ApplicationController
  before_action :set_pick, only: [:create, :destroy]

  def create
    @like = Like.create(user_id: current_user.id, pick_id: params[:pick_id])
    @likes = Like.where(pick_id: params[:pick_id])
    @picks = Pick.all
    @pick = Pick.find(params[:pick_id])
    redirect_to controller: "news", action: "show", id: @pick.product_id
    # respond_to do |format|
    #   format.html {redirect_to @news}
    #   format.js
    # end
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, pick_id: params[:pick_id])
    like.destroy
    @likes = Like.where(pick_id: params[:pick_id])
    @picks = Pick.all
    @pick = Pick.find(params[:pick_id])
    redirect_to controller: "news", action: "show", id: @pick.product_id
    #   format.html {redirect_to @news}
    #   format.js
    # end
    #
  end

  private
  def set_pick
    @pick = Pick.find(params[:pick_id])
  end
end
