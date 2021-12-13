class ReviewsController < ApplicationController
  before_action :set_store

  def create
    @review = @store.reviews.create(review_params)
    redirect_to @store
end
def edit
    @review = Review.find(params[:id])
end

def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to @store
end

def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to @store
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store
      @store = Store.find(params[:store_id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:content, :name)
    end
end
