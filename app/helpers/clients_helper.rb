module ClientsHelper
  def list_clients
    @clients = current_user.clients.all
  end
end
