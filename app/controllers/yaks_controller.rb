class YaksController < ApplicationController
  def index
    @yaks = Yak.all
    @yak = Yak.new
  end

  def create
    @user = current_user
    @yak = @user.yaks.new(yak_params)
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

  def destroy
    @yak = Yak.find(params[:id])
    @yak.destroy
    respond_to do |format|
      format.html {redirect_to yaks_path}
      format.js
    end
  end

private
  def yak_params
    params.require(:yak).permit(:body)
  end
end
