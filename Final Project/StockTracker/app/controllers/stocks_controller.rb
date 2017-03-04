class StocksController < ApplicationController

  # Defining a search method/action that lets the user search. Then uses their params[:stock] if valid to find Stock.find_by_ticker orcreat a new_from_lookup params[:stock].
  def search
    if params[:stock]
      @stock = Stock.find_by_ticker(params[:stock])
      @stock ||= Stock.new_from_lookup(params[:stock])
    end

    # if you have any of the two @stock instance variable render the partial form Lookup.
    if @stock
      # render json: @stock
      render partial: 'lookup'
    # or else render the status not found method.
    elsif true
      render status: :not_found, nothing: true
    end
  end
end
