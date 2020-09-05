class Api::ItemsController < ActionController::API
  def index
    render json: { items: Item.where(token: params[:token]).order(id: :asc).to_a.map(&:values) }
  end
end
