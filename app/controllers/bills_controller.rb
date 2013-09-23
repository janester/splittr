class BillsController < ApplicationController
  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.create(params[:bill])
    session[:bill_id] = @bill.id
    redirect_to(new_person_path)
  end
end
