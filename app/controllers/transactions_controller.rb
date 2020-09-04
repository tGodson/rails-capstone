class TransactionsController < ApplicationController
  before_action :logged_in?, only: [:create]

  def index 
    @transactions = Transaction.all
  end

  def show
    @transaction = Transaction.find(params[:id])
    #@attendees = User.all
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = current_user.created_transactions.build(transaction_params)
    if @transaction.save
      flash.notice = 'Transaction created'
      redirect_to @transaction
    else
      render :new
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :amount)
  end
end
