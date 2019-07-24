class LoansController < ApplicationController
  before_action :set_loan, only: [ :destroy]
  before_action :authenticate_user!, only: [ :changest, :create, :destroy ]
  def index
    @loans =Loan.where(user_id: params[:user_id])
  end

  def out_requests
    @loans = Loan.where(user_id: current_user.id)
  end

  def in_requests
    @items = current_user.items
  end

  def changest
    @loan = Loan.find(params[:id])
    puts (params[:status])
    puts (params[:status] == 'Accepted')
    if params[:status] == 'Accepted'
      @loan.item.update_attribute(:loaned, true)
    else
      @loan.item.update_attribute(:loaned, false)
    end
    @loan.update_attribute(:status, params[:status])
    @loan.save
    redirect_to request.referrer
  end 

  def create
    @loan = current_user.loans.new(loan_params)

    if @loan.save
      redirect_to out_requests_path
    else
      puts "can't save"
    end
  end

  def destroy
     if @loan.destroy
      redirect_to out_requests_path
     end
  end


  private
    def set_loan
      @loan = Loan.find(params[:id])
    end

    def update_loan_params
      params.require(:loan).permit(:item_id, :status)
    end
    def loan_params
      params.require(:loan).permit(:item_id)
    end
end