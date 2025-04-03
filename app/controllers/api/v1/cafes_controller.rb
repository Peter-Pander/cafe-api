class Api::V1::CafesController < ApplicationController
  def index
    if params[:title].present?
      # @cafes = Cafe.where(title: params[:title])
      @cafes = Cafe.where('title ILIKE ?', "%#{params[:title]}%")
    else
      @cafes = Cafe.all
    end
    # Putting the most recently created cafes first
    render json: @cafes.order(created_at: :desc)
  end
end
