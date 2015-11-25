class DormsController < ApplicationController
  before_action :set_dorm, only: [:show, :edit, :update, :destroy, :search]
  #before_action :ensure_admin, only: [:new, :edit, :create, :update, :destroy]
  # GET /scotches
  # GET /scotches.json

  def index
    @dorms = Dorm.all
    if params[:search]
      @dorms = Dorm.search(params[:search])
    else
      @dorms = Dorm.all.limit(20)
    end
  end

  # GET /scotches/1
  # GET /scotches/1.json
  def show
  end

  # GET /scotches/new
  def new
    @dorm = Dorm.new
  end

  # GET /scotches/1/edit
  def edit
  end

  # POST /scotches
  # POST /scotches.json
  def create
    @dorm = Dorm.new(dorm_params)

    respond_to do |format|
      if @dorm.save
        format.html { redirect_to @dorm, notice: 'Dorm was successfully created.' }
        format.json { render :show, status: :created, location: @dorm }
      else
        format.html { render :new }
        format.json { render json: @dorm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scotches/1
  # PATCH/PUT /scotches/1.json
  def update
    respond_to do |format|
      if @dorm.update(dorm_params)
        format.html { redirect_to @dorm, notice: 'Dorm was successfully updated.' }
        format.json { render :show, status: :ok, location: @dorm }
      else
        format.html { render :edit }
        format.json { render json: @dorm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scotches/1
  # DELETE /scotches/1.json
  def destroy
    @dorm.destroy
    respond_to do |format|
      format.html { redirect_to dorms_url, notice: 'Dom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dorm
      @dorm = Dorm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dorm_params
      params.require(:dorm).permit(:name, :address, :college, :search)
    end
end
