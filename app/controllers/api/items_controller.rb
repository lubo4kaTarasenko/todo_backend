class Api::ItemsController < ActionController::API
  def index
    render json: { items: Item.where(token: params[:token]).order(id: :asc).to_a.map(&:values) }
  end

  def create
    json = params.permit(:text, :check, :color)
    item = Item.create(json.merge(token: params[:token]))
    render json: { item: item.values }
  end

  def update
    json = params.permit(:id, :text, :check, :color)
    result = Item.where(token: params[:token], id: params[:id]).update_all(json.to_h)
    render json: { result: result }
  end

  def destroy
    result = Item.where(token: params[:token], id: params[:id]).delete_all
    render json: { result: result }
  end
end
