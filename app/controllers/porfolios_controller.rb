class PorfoliosController < ApplicationController
  def index
    @portfolio_items = Porfolio.all
  end
  def new
    @portfolio_items = Porfolio.new
  end
  def create
    @portfolio_items = Porfolio.new(params.require(:porfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to porfolios_path, notice: 'Portfolio was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio_items }
      else
        format.html { render :new }
        format.json { render json: @portfolio_items.errors, status: :unprocessable_entity }
      end
    end
  end  
end
