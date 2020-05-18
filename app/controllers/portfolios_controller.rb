class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all

		#@portfolio_items = Portfolio.where(subtitle: "Angular") # This isn't the best approach. Don't do this!
		#@portfolio_items = Portfolio.Angular
		#@portfolio_items = Portfolio.ruby_on_rails_portfolio_items
	end

	def angular
		@angular_portfolio_items = Portfolio.Angular
	end

	def new 
		@portfolio_item = Portfolio.new
	end

	def create
		@portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

		respond_to do |format|
			if @portfolio_item.save
				format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully created.' }
			else
        		format.html { render :new }
      		end
    	end

	end

	def edit

		@portfolio_item = Portfolio.find(params[:id])

	end

	def update

		@portfolio_item = Portfolio.find(params[:id])

		respond_to do |format|
			if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
				format.html { redirect_to portfolios_path, notice: 'The record successfully updated.' }
			else
				format.html { render :edit }
			end
		end
	end

	def show
		@portfolio_item = Portfolio.find(params[:id])
	end

	def destroy
		@portfolio_item = Portfolio.find(params[:id])
		@portfolio_item.destroy

		respond_to do |format|
			format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully destroyed.' }
		end
	end

end
