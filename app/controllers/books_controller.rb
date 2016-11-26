class BooksController < ApplicationController
  before_action :set_book,only:[:show,:edit,:update,:destroy]
  def index
    @books = Book.all
  end
  
  def show
    #@book = Book.find(params[:id])
  end
  
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    if @book.valid?
    @book.save
    # リダイレクト
    redirect_to books_path
  else
    flash[:alert]= @book.errors.full_messages
    render:new
  end
  
  def edit
    #@book = Book.find(params[:id])
  end
  end
  
  def update
    #@book = Book.find(params[:id])
    @book.update(book_params)
    
    # リダイレクト
    redirect_to book_path
  end
  
  def destroy
    #@book = Book.fine(params[:id])
    @book.destroy
    
    redirect_to books_path
    
  end
  
  private
  def set_book
    @book = Book.find(params[:id])
  end
  
   private
  def book_params
    params.require(:book).permit(:name,:price,:publish,:publish_date)
  end
  
  
  
  
  
  
  
end
