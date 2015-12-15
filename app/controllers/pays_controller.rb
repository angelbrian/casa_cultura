class PaysController < ApplicationController
  before_action :set_pay, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pays = Pay.all
    respond_with(@pays)
  end

  def show
    respond_with(@pay)
  end

  def new
    @pay = Pay.new
    respond_with(@pay)
  end

  def edit
  end

  def create
    @pay = Pay.new(pay_params)
    @pay.save
    respond_with(@pay)
  end

  def update
    @pay.update(pay_params)
    respond_with(@pay)
  end

  def destroy
    @pay.destroy
    respond_with(@pay)
  end

  private
    def set_pay
      @pay = Pay.find(params[:id])
    end

    def pay_params
      params.require(:pay).permit(:tipo_pago)
    end
end
