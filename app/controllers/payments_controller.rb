# Controller for the Payment Model, which is designed to be an intermediary between the user and charges
class PaymentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_payment, :only => :show

  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.new(payment_params)
    @payment.user_id = current_user.id
    @payment.amount = @payment.amount * 100
    if @payment.save
      redirect_to @payment, :notice => 'Payment was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  def index
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_payment
    @payment = Payment.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def payment_params
    params.require(:payment).permit(:purpose, :amount, :user_id)
  end
end
