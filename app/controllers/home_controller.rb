class HomeController < ApplicationController

  def index
    @bill = Bill.new
  end

  def create_bill
    @bill = Bill.create(params[:bill])
    session[:bill] = @bill.id
  end

  def num_people
    num = params[:num_people].to_i
    @bill = Bill.find(params[:bill_id])
    num.times do |x|
      @bill.people.build(name:"Person #{x+1}")
    end
    @bill.save
  end

  def create_item
    @item = Item.create(params[:item])
  end
end
