class UsersController < ApplicationController
  # before_action(:authenticate_user!)


  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find_by_id(params[:id])
  end
  def update
    @user = User.find_by_id(params[:id])
    @user.update(user_params)
    redirect_to_profile_if_valid(:edit, 'Your update was successfully updated!', 'We had problems updating your profile.')
  end
  def destroy
    #code
  end

  private
  def   redirect_to_profile_if_valid(action_to_render, success_copy, failure_copy)
    if @user.valid?
      flash.notice = success_copy
      redirect_to(@user)
    elsif
      flash.now.alert = failure_copy
      render(action_to_render)
    end
  end


  def user_params
    params.require(:user).permit(:name, :headline, :profile, :email, :admin)
  end




end
