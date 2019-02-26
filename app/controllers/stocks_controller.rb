class StocksController < ApplicationController
   
   def search
      if params[:stock].blank?
         flash.now[:danger] = "you entered empty string"
      else
         @stock = Stock.look_up(params[:stock])
         flash.now[:danger] = "you entered invalid string" unless @stock
      end
      render partial: 'users/results'
   end
   
end