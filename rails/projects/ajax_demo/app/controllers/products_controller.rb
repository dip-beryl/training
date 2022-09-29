class ProductsController < ApplicationController
  before_action :products_list, only: %i[ one_view index create update destroy ]
  before_action :set_product, only: %i[ show edit update destroy ]

  def one_view
    @product = Product.new

    respond_to do |format|
      if params[:search]
        @products = Product.where("name LIKE ?", Product.sanitize_sql_like(params[:search])+"%")
        
        format.html
        format.js { render :layout => false }#{ render :show, status: :created }
      else
        format.html { @products = Product.all }
      end
    end
  end

  # GET /products or /products.json
  def index
    
  end

  # GET /products/1 or /products/1.json
  def show
    respond_to do |format|
      if params[:id]
        format.js { render :layout => false }
        format.html
      end
    end
  end

  # GET /products/new
  def new
    @product = Product.new

    respond_to do |format|
      format.js
      format.html
    end
  end

  # GET /products/1/edit
  def edit
    respond_to do |format|
      format.js
      format.html
    end
  end

  # POST /products or /products.json
  def create
    # @products = Product.all
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to product_url(@product), notice: "Product was successfully created." }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to product_url(@product), notice: "Product was successfully updated." }
        format.js {@product = Product.new}
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy
    # @products = Product.all

    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.js {@product = Product.new}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    def products_list
      @products = Product.all
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :price, :description, :search)
    end
end
