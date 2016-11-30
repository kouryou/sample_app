class GoodsController < ApplicationController
  def create
    @micropost = Micropost.find(params[:good][:micropost_id])
    good = current_user.goods.build(micropost_id: @micropost.id)
    good.save
  end

  def destroy
    good = Good.find(params[:id])
    @micropost = Micropost.find(good.micropost_id)
    good.destroy
  end
end
