require 'json'

class ProductsController < ApplicationController
  def index
    api_key = ENV["LCBO_KEY"]

    # Make a request to the API
    # response = HTTParty.get("https://lcboapi.com/products?access_key=#{api_key}")
    response = HTTParty.get("https://lcboapi.com/products",
      headers: {
        authorization: "Token token=\"#{api_key}\""
      })

    # Parse the stringified json into a ruby object
    parsed_response = JSON.parse(response.body)

    # Extract relevant data into an instance variable
    @products  = parsed_response['result']
  end

  def show
    id = params[:id]

    api_key = ENV["LCBO_KEY"]

    # Make a request to the API
    # response = HTTParty.get("https://lcboapi.com/products/#{id}?access_key=#{api_key}")
    response = HTTParty.get("https://lcboapi.com/products/#{id}",
      headers: {
        authorization: "Token token=\"#{api_key}\""
      })

    # Parse the stringified json into a ruby object
    parsed_response = JSON.parse(response.body)

    result = parsed_response['result']

    render json: {
      name: result['name'],
      image: result['image_thumb_url']
    }
    # respond_to do |format|
    #   format.json {
    #
    #   }
    # end
    #
    # # Extract relevant data into an instance variable
    # @products  = parsed_response['result']
  end

  private

  def make_request(url)
    api_key = ENV["LCBO_KEY"]

    # Make a request to the API
    # response = HTTParty.get("https://lcboapi.com/products/#{id}?access_key=#{api_key}")
    response = HTTParty.get(url,
      headers: {
        authorization: "Token token=\"#{api_key}\""
      })

    return parsed_response = JSON.parse(response.body)
  end
end
