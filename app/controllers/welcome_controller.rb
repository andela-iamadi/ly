class WelcomeController < ApplicationController

  def index
    @url = Url.new
  end

  def about
    @users_count = User.count
    @urls_count = Url.count
    @hits_count = Hit.count
  end
end
