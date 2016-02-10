class ClientsController < ApplicationController
  def create
    @client = current_user.clients.new
    if @client.save(client_params)
      render json: {
        status: 200
      }
    else 
      render json: {
        status: 500
      }
    end
  end

  private
  def client_params
    params.require(:client).permit(:name, :contact, :email, :phone, :fax, :currency, :website, :address)
  end
end
