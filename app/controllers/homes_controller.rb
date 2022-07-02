class HomesController < ApplicationController

  def index
    @homes = Home.all
    # render :action => 'index'

  end

  def new
    @inquiry = Inquiry.new
  end



  def menu
    @home = Home.new(home_params)
    # @home = Home.find(params[:id])
  end

  def confirm
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.valid?
      InquiryMailer.contact_mail(@inquiry).deliver
      redirect_to root_path, notice: 'お問い合わせ内容を送信しました'
    else
      render :index
    end
  end


  private

    # Only allow a list of trusted parameters through.
    def inquiry_params
      params.require(:inquiry).permit(:name, :email, :message)
    end


end