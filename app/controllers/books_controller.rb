class BooksController < ApplicationController

    def book_params
        params.require(:book).permit(:title, :author, :genre, :price, :"published-date")
    end
    def new
    end
    def create
        @book = Book.new(book_params)
        @book.save
        redirect_to @book
    end
    def show
        @book = Book.find(params[:id])
    end
end
