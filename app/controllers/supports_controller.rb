class SupportsController < ApplicationController

  def create
    @support = current_user.supports.build(support_params)

    if @support.save
      redirect_to request.referrer
    else
      redirect_to request.referrer
    end
  end

  def destroy
    @support = Support.find(params[:id])
    @support.destroy
    redirect_to request.referrer
  end

  private
    def support_params
      params.permit(:user_id, :idea_id, :id)
    end

end
