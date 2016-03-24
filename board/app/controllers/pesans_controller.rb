class PesansController < ApplicationController

  def index
    # @pesans = Pesan.all
    @pesans = Pesan.last(15)
  end

  def index_pure
    @pesans = Pesan.last(15) 
    # render layout: false
  end

  def reload
    render :index_pure => "pesans/dynamic"
  end    

  def show
    @pesan = Pesan.find(params[:id])
  end

  def new
  	@pesan = Pesan.new
  end

  def create
    @pesan = Pesan.new(pesan_params)
   
    if @pesan.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  private
    def pesan_params
      params.require(:pesan).permit(:name, :text)
    end

end
