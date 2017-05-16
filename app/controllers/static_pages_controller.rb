class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @idea = current_user.ideas.build
    end
    @popular_feed_items = Idea.all.all.sort {|a,b| b.supporters.count <=> a.supporters.count}
    @recent_feed_items = Idea.all.order(:created_at)
  end
end
