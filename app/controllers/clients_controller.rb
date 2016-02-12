class ClientsController < ApplicationController
  def create
    @client = current_user.clients.new(client_params)
    if @client.valid?
      @client.save
      render json: {
        status: true,
        model: @client
      }
    else 
      render json: {
        status: false,
        errors: @client.errors.full_messages
      }
    end
  end

  private
  def client_params
    params.require(:client).permit(:name, :contact, :email, :phone, :fax, :currency, :website, :address)
  end
end
