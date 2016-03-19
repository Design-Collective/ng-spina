module Spina
  module Admin
    class ReviewsController < AdminController
      before_filter :set_breadcrumb

      layout "spina/admin/website"

      def show
        @review = Review.find(params[:id])
      end

      def index
        @reviews = Review.all
        @average_rating = Review.average('rating') || 0
      end

      def new
        add_breadcrumb "New review", spina.new_admin_review_path

        @review = Review.new
      end

      def edit
        @review = Review.find(params[:id])
        add_breadcrumb @review.name
      end

      def create
        @review = Review.new(review_params)

        add_breadcrumb "New review"
        if @review.save
          redirect_to spina.admin_reviews_url, notice: "Review created."
        else
          render :new
        end
      end

      def update
        @review = Review.find(params[:id])

        add_breadcrumb @review.name

        if @review.update_attributes(review_params)
          redirect_to spina.admin_reviews_url, notice: "Review #{@review.name} has been updated."
        else
          render :edit
        end
      end

      def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to spina.admin_reviews_url, notice: "Review has been deleted."
      end

      private

      def set_breadcrumb
        add_breadcrumb "Reviews", spina.admin_reviews_path
      end

      def review_params
        params.require(:review).permit(:name, :rating, :created_at, :explanation)
      end
    end
  end
end
