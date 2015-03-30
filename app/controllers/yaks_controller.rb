class YaksController < ApplicationController
  def index
    @yaks = Yak.all
  end
end
