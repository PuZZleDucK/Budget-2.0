class IdeasController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @idea = current_user.ideas.build(idea_params)
    if @idea.save
      flash[:success] = "Your idea has been created"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private
    def idea_params
      params.require(:idea).permit(:content)
    end

end
