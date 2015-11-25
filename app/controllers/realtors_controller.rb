class RealtorsController < ApplicationController
  before_action :set_realtor, only: [:show, :edit, :update, :destroy, :search]
  #before_action :ensure_admin, only: [:new, :edit, :create, :update, :destroy]
  # GET /scotches
  # GET /scotches.json

  def index
    @realtors = Realtor.all
    if params[:search]
      @realtors = Realtor.search(params[:search])
    else
      @realtors = Realtor.all.limit(20)
    end
  end

  # GET /scotches/1
  # GET /scotches/1.json
  def show
  end

  # GET /scotches/new
  def new
    @realtor = Realtor.new
  end

  # GET /scotches/1/edit
  def edit
  end

  # POST /scotches
  # POST /scotches.json
  def create
    @realtor = Realtor.new(realtor_params)

    respond_to do |format|
      if @realtor.save
        format.html { redirect_to @realtor, notice: 'Realtor was successfully created.' }
        format.json { render :show, status: :created, location: @realtor }
      else
        format.html { render :new }
        format.json { render json: @realtor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scotches/1
  # PATCH/PUT /scotches/1.json
  def update
    respond_to do |format|
      if @realtor.update(realtor_params)
        format.html { redirect_to @realtor, notice: 'Realtor was successfully updated.' }
        format.json { render :show, status: :ok, location: @realtor }
      else
        format.html { render :edit }
        format.json { render json: @realtor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scotches/1
  # DELETE /scotches/1.json
  def destroy
    @realtor.destroy
    respond_to do |format|
      format.html { redirect_to realtors_url, notice: 'Realtor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_realtor
      @realtor = Realtor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def realtor_params
      params.require(:realtor).permit(:name, :address, :college, :realtor_url, :search)
    end
end
