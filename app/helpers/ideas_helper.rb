module IdeasHelper

  def current_idea
    @current_idea ||= Idea.find_by(id: session[:idea_id])
  end

end
