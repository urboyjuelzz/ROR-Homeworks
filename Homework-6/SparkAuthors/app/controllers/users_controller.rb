class UsersController < ApplicationController

  # This index method has an instance var that you used on your veiws page to display all the users records in the index veiw page.
  def index
    @users = User.all
  end

  # This will allow you to call the recorded information in the database for a given tabele.
  def show
    @user = User.find_by_id(params[:id])
  end
  # You created a new method/action to reder the form for users to sign up and create a record in the users table
  def new
    @user = User.new
  end
  # This will save the form filled out and submitted in the new method table.
  def create
    @user = User.create(user_params)
    redirect_to user_path(@user) #this will redirect them to the user show page.
  end
  def edit
    @user = User.find_by_id(params[:id])
  end
  def update
    @user = User.update(user_params)
    redirect_to user_path(@user) #this will redirect them to the user show page.
  end
  end

  private

  def user_params
    params.require(:user).permit(:firs_name, :last_name, :email, :gender, :age)
  end

end
