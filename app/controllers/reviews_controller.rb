class ReviewsController < ApplicationController

  def index
    @reviews = Review.last(10)
  end
end
