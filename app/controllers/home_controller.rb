class HomeController < ApplicationController
  def index
    @things = Thing.all
  end  

end
