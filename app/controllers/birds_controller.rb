class BirdsController < ApplicationController
  def index
    #@birds = Bird.all
    birds = Bird.all
    # render json: birds
    # render 'birds/index.html.erb'
    # render plain: "Hello #{@birds[2].name}"
    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
    # render json: { message: 'Hashes of data will get converted to JSON' }
    # render json: ['As','well','as','arrays']
    # render json: @birds
    render json: { birds: birds, messages: ['Hello Birds', 'Goodbye Birds'] }
    # or use for same result as above render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json

  # how to render mulitple lines?
  end
end
