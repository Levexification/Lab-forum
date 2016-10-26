class PostTablesController < ApplicationController
  before_action :set_post_table, only: [:show, :edit, :update, :destroy]

  # GET /post_tables
  # GET /post_tables.json
  def index
    @post_tables = PostTable.all

    if params[:search]
      @post_tables = PostTable.search(params[:search]).order("created_at DESC")
    else
      @post_tables = PostTable.all.order("created_at DESC")
    end
  end

  # GET /post_tables/1
  # GET /post_tables/1.json
  def show
  end

  # GET /post_tables/new
  def new
    @post_table = PostTable.new
  end

  # GET /post_tables/1/edit
  def edit
  end

  # POST /post_tables
  # POST /post_tables.json
  def create
    @post_table = PostTable.new(post_table_params)

    respond_to do |format|
      if @post_table.save
        format.html { redirect_to @post_table, notice: 'Post table was successfully created.' }
        format.json { render :show, status: :created, location: @post_table }
      else
        format.html { render :new }
        format.json { render json: @post_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_tables/1
  # PATCH/PUT /post_tables/1.json
  def update
    respond_to do |format|
      if @post_table.update(post_table_params)
        format.html { redirect_to @post_table, notice: 'Post table was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_table }
      else
        format.html { render :edit }
        format.json { render json: @post_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_tables/1
  # DELETE /post_tables/1.json
  def destroy
    @post_table.destroy
    respond_to do |format|
      format.html { redirect_to post_tables_url, notice: 'Post table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_table
      @post_table = PostTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_table_params
      params.require(:post_table).permit(:title, :content)
    end
end
