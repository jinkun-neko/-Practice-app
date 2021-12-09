class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def show
      @book = Book.find(params[:id])
  end

  def index
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:success] = "#{@book.title} を登録しました。"
      redirect_to @book
    else
      render 'new'
    end
  end
  
  private

      def book_params
        params.require(:book).permit(:title, :author, :new_date,
        :page, :image)
      end
end