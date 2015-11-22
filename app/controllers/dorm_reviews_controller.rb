class DormReviewsController < ApplicationController
  before_action :set_dorm_review, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @dorm_reviews = DormReview.all
  end

  # GET /dorm_reviews/1
  # GET /dorm_reviews/1.json
  def show
  end

  # GET /dorm_reviews/new
  def new
    @dorm_review = DormReview.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /dorm_reviews
  # POST /dorm_reviews.json
  def create
    @dorm_review = DormReview.new(dorm_review_params)

    respond_to do |format|
      if @dorm_review.save
        format.html { redirect_to @dorm_review.dorm, notice: 'Dorm Review was successfully recorded.'}
        #format.json { render :show, status: :created, location: @dorm_review }
      else
        format.html { render :new }
        format.json { render json: @dorm_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dorm_reviews/1
  # PATCH/PUT /dorm_reviews/1.json
  def update
    respond_to do |format|
      if @dorm_review.update(dorm_review_params)
        format.html { redirect_to @dorm_review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @dorm_review }
      else
        format.html { render :edit }
        format.json { render json: @dorm_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dorm_reviews/1
  # DELETE /dorm_reviews/1.json
  def destroy
    @dorm_review.destroy
    respond_to do |format|
      format.html { redirect_to dorm_reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dorm_review
      @dorm_review = DormReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dorm_review_params
      params.require(:dorm_review).permit(:score,:cost,:location,:condition,:nightlife, :bathrooms_per_hall, :dorm_id, :user_id, :comments)
    end
end
