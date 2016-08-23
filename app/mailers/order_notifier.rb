class OrderNotifier < ApplicationMailer
  default from: "Sudakov Eugene <depot@example.com>"

  def received(order)
    @order = order

    mail to: order.email, subject: "Accepting of purchase at Pragmatic Cat store"
  end

  def shipped(order)
  @order = order

    mail to: order.mail, subject: "Order has been sent"
  end
end
