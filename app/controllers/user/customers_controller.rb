class User::CustomersController < ApplicationController

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to user_customer_path(customer)
    else
      @customer = Customer.new
      render :new
    end
  end

  def index
    @customers = Customer.all
  end

  def show
  end

  def destroy
  end


  private

  def customer_params
    params.require(:customer).permit(:customer_name, :memo, :telephone_number, :address, :manager)
  end

end
