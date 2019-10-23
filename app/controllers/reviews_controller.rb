class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def update
    @review.update(review_params)
    redirect_to review_path(@review)
  end

  def edit
  end

  def show
  end

  def index
    @reviews = Review.all
  end

  def destroy
    @review.destroy
    redirect_to reviews_path
  end


  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant)
  end
end
