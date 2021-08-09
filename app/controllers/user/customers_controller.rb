class User::CustomersController < ApplicationController

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.user_id = current_user.id
    if @customer.save
      flash[:notice]="You have creatad customer successfully."
      redirect_to customers_path(@customer)
    else
      @user = current_user
      @customers = Customer.all
      render :new
    end
  end

  def index
    @user = current_user
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def destroy
  end


  private

  def customer_params
    params.require(:customer).permit(:customer_name, :memo, :telephone_number, :address, :manager)
  end

end
