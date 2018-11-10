class ReviewsController < ApplicationController

  def create
    # byebug
    puts params[:product_id]
    product = Product.find(params[:product_id])

    review = product.reviews.new(review_params)
    review.user = current_user
    if review.save
      redirect_to product
    else
      redirect_to product
    end
  end

  private
  def review_params
    params.require(:review).permit(:product_id, :user_id, :description, :rating)
  end
end
