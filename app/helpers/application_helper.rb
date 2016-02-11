module ApplicationHelper
  def client
    @client ||= current_user.clients.new if user_signed_in?
  end

  def currency_options
    @currency = Currency.all
  end
end
