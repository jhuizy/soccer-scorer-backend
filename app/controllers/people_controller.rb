class PeopleController < ApplicationController

  respond_to :json

  def index
    @people = People.all
    render json: @people
  end

end
