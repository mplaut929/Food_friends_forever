class UserRestrictionsController < ApplicationController

  def new
    @restrictions = Restriction.all
    @user_restriction = UserRestriction.new
  end

  def create
    @user_restriction = UserRestriction.create(ur_params)
    redirect_to user_path(current_user)
  end

  private

  def ur_params
    params.require(:user_restriction).permit(:user_id, restriction_ids: [])
  end



end
