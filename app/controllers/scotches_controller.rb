class ScotchesController < ApplicationController
  before_action :set_scotch, only: [:show, :edit, :update, :destroy]
  before_action :ensure_admin, only: [:new, :edit, :create, :update, :destroy]
  # GET /scotches
  # GET /scotches.json
  def index
    @scotches = Scotch.all
  end

  # GET /scotches/1
  # GET /scotches/1.json
  def show
  end

  # GET /scotches/new
  def new
    @scotch = Scotch.new
  end

  # GET /scotches/1/edit
  def edit
  end

  # POST /scotches
  # POST /scotches.json
  def create
    @scotch = Scotch.new(scotch_params)

    respond_to do |format|
      if @scotch.save
        format.html { redirect_to @scotch, notice: 'Scotch was successfully created.' }
        format.json { render :show, status: :created, location: @scotch }
      else
        format.html { render :new }
        format.json { render json: @scotch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scotches/1
  # PATCH/PUT /scotches/1.json
  def update
    respond_to do |format|
      if @scotch.update(scotch_params)
        format.html { redirect_to @scotch, notice: 'Scotch was successfully updated.' }
        format.json { render :show, status: :ok, location: @scotch }
      else
        format.html { render :edit }
        format.json { render json: @scotch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scotches/1
  # DELETE /scotches/1.json
  def destroy
    @scotch.destroy
    respond_to do |format|
      format.html { redirect_to scotches_url, notice: 'Scotch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scotch
      @scotch = Scotch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scotch_params
      params.require(:scotch).permit(:name, :distiller, :affiliate_price, :affiliate_name, :affiliate_url, :story, :image)
    end
end
