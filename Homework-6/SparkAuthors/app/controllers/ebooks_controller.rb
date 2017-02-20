class EbooksController < ApplicationController
  def index
    @ebooks = Ebook.all
  end
end
