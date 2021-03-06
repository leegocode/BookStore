class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to books_path, notice: "new record!"
    else
      render :new

    end

  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  def delete
  end


  private
  def book_params
    params.require(:book).permit(:title, :description, :publish_date)
  end
end
