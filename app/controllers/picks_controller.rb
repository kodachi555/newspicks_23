class PicksController < ApplicationController

  before_filter :authenticate_user!, only: [:create]

  def create
    @pick = Pick.new(text: params[:text], product_id: params[:product_id], user_id: params[:user_id])
    @pick.save
    redirect_to controller: "news", action: "show", id: @pick.product_id
  end

  # private
  # def pick_params
  #   params.require(:pick).permit(:text, :product_id)
  # end
end
