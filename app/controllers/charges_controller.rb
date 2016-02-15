# Charges controller is for handling stripe transactions
class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents
    print params
    @payment = Payment.find(params[:id])
    @amount = @payment.amount.to_i

    customer = Stripe::Customer.create(
      :email  => params[:stripeEmail],
      :source => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => @payment.purpose,
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
