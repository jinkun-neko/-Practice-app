class BooksController < ApplicationController

  def index
    @books = Book.all.order(created_at: :desc)
  end
  
  def show
      @book = Book.find(params[:id])
  end

  def update
      @book = Book.find(params[:id])
      if @book.update(book_params)
          redirect_to("/books/#{@book.id}")
      else
         render 'edit'
      end
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
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

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to("/index")
    flash[:success] = "#{@book.title} を削除しました。"
  end
  
  private

      def book_params
        params.require(:book).permit(:title, :author, :new_date,
        :page, :picture)
      end
end