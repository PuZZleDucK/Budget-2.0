class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @idea = current_user.ideas.build
    end
    @popular_feed_items = Idea.all.all.sort {|a,b| b.supporters.count <=> a.supporters.count}
    @top_feed_items = @popular_feed_items.take(3)
    @recent_feed_items = Idea.all.order(:created_at)
    @user_count = User.all.count
  end
end
