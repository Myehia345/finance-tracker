class Stock < ActiveRecord::Base
    def self.look_up(ticker_sym)
        begin
            looked_up_stock = StockQuote::Stock.quote(ticker_sym)
            new(name: looked_up_stock.company_name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.latest_price)
        rescue Exception => e
            return nil
        end
    end
    
end
