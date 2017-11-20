class PeopleController < ApplicationController

  respond_to :json

  def index
    @people = Person.all
    respond_with @people
  end

  def show
    @person = Person.find(params[:id])
    respond_with @person
  end

end
