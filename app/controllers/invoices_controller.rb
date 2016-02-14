class InvoicesController < ApplicationController
  def index
    @invoices = ClientInvoice.all
  end

  def create
    client = Client.find(params[:client_id])
    if client
      @invoice = client.client_invoices.build
      if @invoice.valid?
        @invoice.save
        render json: {
          status: true,
          model: @invoice
        }
      else
        render json: {
          status: false,
          errors: @invoice.errors.full_messages
        }
      end
    else
      (errors ||= []) << "Client doesn't exist"
      render json: {
        status: false,
        errors: errors
      }
    end
  end

  def show
  end
end
