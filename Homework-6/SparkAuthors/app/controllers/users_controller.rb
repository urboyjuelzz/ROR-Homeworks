class UsersController < ApplicationController

  # This index method has an instance var that you used on your veiws page to display all the users records in the index veiw page.
  def index
    @users = User.all
  end
  # This will allow you to call the recorded information in the database for a given tabele.
  def show
    @user = User.find_by_id(params[:id])
  end
  # This action renders the form for users to sign up and create a record in the users table
  def new
    @user = User.new
  end
  # This will create a new user when you save the form and redirects to the show action.
  def create
    @user = User.create(user_params)
    redirect_to user_path(@user) #this will redirect them to the show page for that user.
  end
  # This will render the edit form with pre-populated data.
  def edit
    @user = User.find_by_id(params[:id])
  end
  # This updates and redirect when you hit submit to the show page for the user.
  def update
    # extract the **id** from the params object and use ActiveRecord to find the resource by its **id**.
    @user = User.find_by_id(params[:id])
    # use ActiveRecord's update method save your updates.
    @user.update(user_params)
     # redirect to the show page of the updated character after the updates have been saved
     # since the show action (character_path maps to the show action) requires an id we can pass the enter Character instance as a parameter to the named route
    redirect_to user_path(@user) #this will redirect them to the user show page.
  end
  def destroy
     # extract the **id** from the params object and use ActiveRecord to find the resource by its **id**
    @user = User.find(params[:id])
     # use ActiveRecord's destroy method to delete the resource
    @user.destroy
    # redirect to the index action (list view)
    redirect_to users_path
  end


  private
  # This is a security measure that allows the fields in the new form to be permitted into the database.
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :gender, :age)
  end

end
