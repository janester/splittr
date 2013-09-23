class BillsController < ApplicationController
  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.create(params[:bill])
    @bill.tip = @bill.total*(@bill.tip_percent/100)
    @bill.save
    session[:bill_id] = @bill.id
    redirect_to(new_person_path)
  end

  def show
    @bill = Bill.find(params[:id])
    @people = @bill.people
    @people.each {|x| x.get_total}
    @totals = []
    @people.each do |person|
      @totals << {person:person, percent_of_tt:(person.total/@bill.total)*100, extra:(@bill.tip+@bill.tax)*(person.total/@bill.total)}
    end
  end
end
