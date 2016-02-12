class ClientsController < ApplicationController
  def create
    @client = current_user.clients.new(client_params)
    if @client.save
      render json: {
        status: true
      }
    else 
      render json: {
        status: false
      }
    end
  end

  private
  def client_params
    params.require(:client).permit(:name, :contact, :email, :phone, :fax, :currency, :website, :address)
  end
end
