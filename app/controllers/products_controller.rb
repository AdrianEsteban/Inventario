class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy, :entry, :output]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    #@products = Product.where("category = '1'")
  end

  # GET /products/1
  # GET /products/1.json
  def show 
    var = params[:id]
    @inputs = ProEntry.where("products_id = #{var}")
      
    @outputs = Output.where("products_id = #{var}")
  end

  # GET /products/new
  def new
    @product = Product.new
    @categories = Category.all
  end

  # GET /products/1/edit
  def edit
  end

  

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.categories = params[:categories]  

    cantidad = @product.quantity
    puts "#{cantidad}**************************************************************###}"

    respond_to do |format|
      if @product.save
        format.html { redirect_to "/products/", notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: "/products/" }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end



 def entry
    @input = ProEntry.new
    @products = Product.all
    #cantidad = @product.quantity
    #puts "#{cantidad}**************************************************************###}"

  end

  def output
    @output = Output.new
  end

  def electronic
    @products = Product.where("category = '1'")
  end
  def aliments
    @products = Product.where("category = '2'")
  end
  def home
    @products = Product.where("category = '3'")
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :category, :quantity, :cost, :image, :products_id, :quantity_input, :quantity_ouput, :categories)
    end
end
