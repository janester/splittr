class PeopleController < ApplicationController
  def new
    @bill = Bill.find(session[:bill_id])
    @people = @bill.people
  end

  def create
    @bill = Bill.find(session[:bill_id])
    @bill.people.build(params[:person])
    @bill.save
    @people = @bill.people
  end
end
