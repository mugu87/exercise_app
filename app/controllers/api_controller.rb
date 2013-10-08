class ApiController < ApplicationController
  respond_to :json, :xml
  def show
    @calorie = Calorie.last
  end
end
