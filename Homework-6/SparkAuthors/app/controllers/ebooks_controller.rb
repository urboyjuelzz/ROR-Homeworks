class EbooksController < ApplicationController
  def index
    @ebooks = Ebook.all
  end
  def new
    @ebook = Ebook.new
  end
  def create
    @ebook = Ebook.create(ebook_params)
    redirect_to ebook_path(@ebook)
  end
  def show
    @user = User.find_by_id(:id)
    @ebook = Ebook.find_by_id(params[:id])
  end
  # This will render the edit form with pre-populated data.
  def edit
    @ebook = Ebook.find_by_id(params[:id])
  end
  # This updates and redirect when you hit submit to the show page for the user.
  def update
    # extract the **id** from the params object and use ActiveRecord to find the resource by its **id**.
    @ebook = Ebook.find_by_id(params[:id])
    # use ActiveRecord's update method save your updates.
    @ebook.update(ebook_params)
     # redirect to the show page of the updated character after the updates have been saved
     # since the show action (character_path maps to the show action) requires an id we can pass the enter Character instance as a parameter to the named route
    redirect_to ebook_path(@ebook) #this will redirect them to the user show page.
  end
  def destroy
     # extract the **id** from the params object and use ActiveRecord to find the resource by its **id**
    @ebook = Ebook.find(params[:id])
     # use ActiveRecord's destroy method to delete the resource
    @ebook.destroy
    # redirect to the index action (list view)
    redirect_to ebooks_path
  end

  private

  # This is a security measure that allows the fields in the new form to be permitted into the database.
  def ebook_params
    params.require(:ebook).permit(:title, :short_desc, :body, :genre, :cost)
  end
end
