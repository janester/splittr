class BillsController < ApplicationController
  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.create(params[:bill])
  end
end
