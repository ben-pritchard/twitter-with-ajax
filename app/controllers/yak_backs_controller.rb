class YakBacksController < ApplicationController
  def new
    @yak_back = YakBack.new
    respond_to do |format|
      format.html {redirect_to yaks_path}
      format.js
    end
  end

  def create
    @yak = Yak.find(params[:yak_id])
    @yak_back = @yak.yak_backs.new(yak_back_params)
    if @yak_back.save
      flash[:notice] = "You have yak'ed back successfully!"
      respond_to do |format|
        format.html { redirect_to yaks_path}
        format.js
      end
    end

  end

private
  def yak_back_params
    params.require(:yak_back).permit(:reply)
  end
end
