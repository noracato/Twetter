class FeedController < ApplicationController

  before_action :authenticate_user!

  def show
    @feed = current_user.feed
    # debugger
  end

end
