class ProEntriesController < ApplicationController
  before_action :set_pro_entry, only: [:show, :edit, :update, :destroy]

  # GET /pro_entries
  # GET /pro_entries.json
  def index
    @pro_entries = ProEntry.all
  end

  # GET /pro_entries/1
  # GET /pro_entries/1.json
  def show
  end

  # GET /pro_entries/new
  def new
    @pro_entry = ProEntry.new
  end

  # GET /pro_entries/1/edit
  def edit
  end

  # POST /pro_entries
  # POST /pro_entries.json
  def create
    entry = params[:pro_entry]
    var = entry[:products_id]   


    @product = Product.find(var)
    cant_product = @product.quantity
    puts "#{cant_product} estaes la   1111111**************************************************************###}"

    @pro_entry = ProEntry.new(pro_entry_params)   
    qu_in = @pro_entry.quantity_input 
    puts "#{qu_in} cantidad subida**************************************************************###}"
     
     inputs = cant_product + qu_in
     puts "#{inputs} suma del 33333**************************************************************###}"

     @product.quantity = inputs

     @product.save

    url= "/products/"

    respond_to do |format|
      if @pro_entry.save
        format.html { redirect_to url, notice: 'Pro entry was successfully created.' }
        format.json { render :show, status: :created, location: url }
      else
        format.html { render :new }
        format.json { render json: url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pro_entries/1
  # PATCH/PUT /pro_entries/1.json
  def update
    respond_to do |format|
      if @pro_entry.update(pro_entry_params)
        format.html { redirect_to @pro_entry, notice: 'Pro entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @pro_entry }
      else
        format.html { render :edit }
        format.json { render json: @pro_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pro_entries/1
  # DELETE /pro_entries/1.json
  def destroy
    @pro_entry.destroy
    respond_to do |format|
      format.html { redirect_to pro_entries_url, notice: 'Pro entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pro_entry
      @pro_entry = ProEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pro_entry_params
       params.require(:pro_entry).permit( :products_id, :quantity_input)
    end
    def id_params
       params.require(:pro_entry).permit( :products_id)
    end
end
