class BooksController < ApplicationController
  before_action :set_book, only: %i[ show edit update destroy ]

  # GET /books or /books.json
  def index
    @books = Book.all
    @authors = Author.all
  end

  # GET /books/1 or /books/1.json
  def show
  end
  
	def poisk
	end

  # GET /books/new
  def new
  	@publishers = Publisher.all
  	@bookshops = Bookshop.all
    @authors = Author.all
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books or /books.json
  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      render "new"
    end
  end

  # PATCH/PUT /books/1 or /books/1.json
  def update
		
  end

  # DELETE /books/1 or /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: "Book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book

      @book = Book.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
      params.require(:book).permit(:author_id, :name, :publisher_id, :bookshop_id)
    end
end
