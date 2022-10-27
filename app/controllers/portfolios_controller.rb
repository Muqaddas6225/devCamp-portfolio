class PortfoliosController < ApplicationController

    def index 
        @portfolios_item = Portfolio.all
    end
end
