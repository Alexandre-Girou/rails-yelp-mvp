class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end
  def create
    @review = Review.new(params[:review])
    if @review.save
      flash[:success] = "Review successfully created"
      redirect_to @review
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
end
