class YaksController < ApplicationController
  def index
    @yaks = Yak.all
    @yak = Yak.new
  end

  def create
    @yak = Yak.new(yak_params)
    if @yak.save
      respond_to do |format|
        format.html {redirect_to yaks_path }
        format.js
      end
    else
      flash[:notice] = "Fail! Your yak was attacked."
      render :index
    end
  end

private
  def yak_params
    params.require(:yak).permit(:body)
  end
end
