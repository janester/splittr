class ItemsController < ApplicationController
  def new
    @bill = Bill.find(session[:bill_id])
  end

  def create
    @bill = Bill.find(session[:bill_id])
    num = params[:people].length.to_f
    params[:item][:price] = (params[:item][:price].to_f)/num
    params[:people].each do |id|
      person = Person.find(id)
      person.items.build(params[:item])
      person.save
    end
  end
end
