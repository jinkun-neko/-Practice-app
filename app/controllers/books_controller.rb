class BooksController < ApplicationController
  def index
    @book = Book.all
  end
 
  def new
  end

  def show
    @book = Book.find(params[:id])
  end
end
