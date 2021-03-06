class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy, :search]
  #before_action :ensure_admin, only: [:new, :edit, :create, :update, :destroy]
  # GET /scotches
  # GET /scotches.json

  def index
    @properties = Property.all
    if params[:search]
      @properties = Property.search(params[:search])
    else
      @properties = Property.all.limit(20)
    end
  end

  # GET /scotches/1
  # GET /scotches/1.json
  def show
  end

  # GET /scotches/new
  def new
    @property = Property.new
  end

  # GET /scotches/1/edit
  def edit
  end

  # POST /scotches
  # POST /scotches.json
  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scotches/1
  # PATCH/PUT /scotches/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scotches/1
  # DELETE /scotches/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:address, :realtor_id, :search)
    end
end
