class PortfoliosController < ApplicationController

    def index 
        @portfolios_item = Portfolio.all
    end

    def new
        @portfolios_item = Portfolio.new
    end

    def edit
        @portfolios_item = Portfolio.find(params[:id])
    end

    def create
        @portfolios_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle,:body))
    
        respond_to do |format|
          if @portfolios_item.save
            format.html { redirect_to portfolios_path, notice: "Portfoilo was successfully created." }
            # format.json { render :show, status: :created, location: @portfolios_item}
          else
            format.html { render :new}
            # format.json { render json: @portfolios_item.errors, status: :unprocessable_entity }
          end
        end
      end

      def update
        @portfolios_item = Portfolio.find(params[:id])
        respond_to do |format|
          if @portfolios_item.update(params.require(:portfolio).permit(:title, :subtitle,:body))
            format.html {redirect_to portfolios_path, notice: "Portfolio was successfully updated." }
            
          else
            format.html { render :edit}
           
          end
        end
      end
end
