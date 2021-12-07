class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def show
      @book = Book.find(params[:id])
  end

  def index
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to show_path(@book.id), notice: "本の#{@book.title} を登録しました。"
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