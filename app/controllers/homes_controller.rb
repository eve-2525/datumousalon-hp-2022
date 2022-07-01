class HomesController < ApplicationController

  def index
    @homes = Home.all
    render :action => 'index'

  end

  def new
    @home = Home.new
  end



  def menu
    @home = Home.new(home_params)
    # @home = Home.find(params[:id])
  end

  def create
    @home = Home.new(home_params)
    if @home.save
      InquiryMailer.contact_mail(@home).deliver
      redirect_to root_path, notice: 'お問い合わせ内容を送信しました'
    else
      render :index
    end
  end


  private

    # Only allow a list of trusted parameters through.
    def home_params
      params.require(:home).permit(:name, :email, :message)
    end


end