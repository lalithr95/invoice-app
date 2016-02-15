module InvoicesHelper
  def invoice_all
    ClientInvoice.all
  end
end
