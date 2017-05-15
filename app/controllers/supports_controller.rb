class SupportsController < ApplicationController

  def create
    @support = current_user.supports.build(support_params)
    puts "SUPP: #{@support.inspect}"

    if @support.save
      flash[:success] = "Your support has been registered"
      redirect_to root_url
    else
      flash[:error] = "Something went wrong"
      redirect_to root_url
    end
  end

  def destroy
    @support = Support.find(params[:id])
    @support.destroy
    redirect_to root_url
  end

  private
    def support_params
      params.permit(:user_id, :idea_id, :id)
    end

end
