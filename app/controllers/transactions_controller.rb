class TransactionsController < ApplicationController
  
  def redirect(url, text)
    redirect_to url, notice: text
  end
  
  def index
    @transactions = Transaction.all
  end
  
  def import
    if params[:file]
      Transaction.import(params[:file])
      redirect(root_url, "Transaction Data imported!") 
    else
      redirect(root_url, "Please upload a CSV file")
    end
  end
end