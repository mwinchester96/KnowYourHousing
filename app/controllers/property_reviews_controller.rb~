class PropertyReviewsController < ApplicationController
  before_action :set_property_review, only: [:show, :edit, :update, :destroy]

  # GET /property_reviews
  # GET /property_reviews.json
  def index
    @property_reviews = PropertyReview.all
  end

  # GET /property_reviews/1
  # GET /property_reviews/1.json
  def show
  end

  # GET /property_reviews/new
  def new
    @property_review = PropertyReview.new
  end

  # GET /property_reviews/1/edit
  def edit
  end

  # POST /property_reviews
  # POST /property_reviews.json
  def create
    @property_review = PropertyReview.new(property_review_params)

    respond_to do |format|
      if @property_review.save
        format.html { redirect_to @property_review, notice: 'Property Review was successfully recorded.'}
        format.json { render :show, status: :created, location: @property_review }
      else
        format.html { render :new }
        format.json { render json: @property_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_reviews/1
  # PATCH/PUT /property_reviews/1.json
  def update
    respond_to do |format|
      if @property_review.update(property_review_params)
        format.html { redirect_to @property_review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_review }
      else
        format.html { render :edit }
        format.json { render json: @property_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_reviews/1
  # DELETE /property_reviews/1.json
  def destroy
    @property_review.destroy
    respond_to do |format|
      format.html { redirect_to property_reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_review
      @property_review = PropertyReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_review_params
      params.require(:property_review).permit(:score, :cost, :location, :condition, :realtor_id, :property_id, :user_id, :comments)
    end
end
