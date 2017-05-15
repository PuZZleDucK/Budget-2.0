class SupportsController < ApplicationController

  def create
    puts "USER: #{current_user}"
    puts "    :"
    puts "IDEA: #{support_params[:idea_id]}"
    @support = current_user.supports.build(support_params)
    puts "    : "
    puts "SUPP-IDEA: #{@support.idea}"
    if @support.save
      flash[:success] = "Your support has been registered"
      redirect_to root_url
    else
      flash[:error] = "Something went wrong"
      # redirect_to root_url
    end
  end

  def destroy
  end

  private
    def support_params
      params.permit(:user_id, :idea_id)
    end

end
