class SearchesController < ApplicationController
  before_action :set_search, only: %i[ show edit update destroy ]

  # GET /searches or /searches.json
  def index
  	@publishers = Publisher.all
  	@bookshops = Bookshop.all
    @authors = Author.all
    @books = Book.all
    @searches = Search.all
  end

  # GET /searches/1 or /searches/1.json
  def show
  	@publishers = Publisher.all
  	@bookshops = Bookshop.all
    @authors = Author.all
    @books = Book.all
    @searches = Search.all
  end

  # GET /searches/new
  def new
  	@search = Search.new
  	@publishers = Publisher.all
  	@bookshops = Bookshop.all
    @authors = Author.all
    @book = Book.all
  end

  # GET /searches/1/edit
  def edit
  end

  # POST /searches or /searches.json
  def create
    @search = Search.new(search_params)

    if @search.save
      redirect_to @search
    else
      render "new"
    end
  end


  # PATCH/PUT /searches/1 or /searches/1.json
  def update
    respond_to do |format|
      if @search.update(search_params)
        format.html { redirect_to @search, notice: "Search was successfully updated." }
        format.json { render :show, status: :ok, location: @search }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /searches/1 or /searches/1.json
  def destroy
    @search.destroy
    respond_to do |format|
      format.html { redirect_to searches_url, notice: "Search was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search
      @search = Search.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def search_params
      params.require(:search).permit(:name)
    end

end
