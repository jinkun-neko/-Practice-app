class BooksController < ApplicationController
  
  def index
    @books = Book.all.order(created_at: :desc)
  end
  

  def show
      @book = Book.find(params[:id])
  end

  def update
    redirect_to("/index")
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
      redirect_to :index  and return
    else
      render :new
    end
  end

  def destroy
  end
  
  private

      def book_params
        params.require(:book).permit(:title, :author, :new_date,
        :page, :image)
      end
end