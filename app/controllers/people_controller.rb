class PeopleController < ApplicationController

  before_filter :find_person, only: [:show, :update, :destroy]
  before_filter :person_params, only: [:create, :update]

  def index
    @people = Person.all
    render json: @people
  end

  def show
    render json: @person
  end

  def create
    @person = Person.create(@person_params)
    render json: @person
  end

  def update
    @person.update(@person_params)
    render json: @person.reload
  end

  def destroy
    @person.destroy
    render json: @person
  end

  private

  def find_person
    @person = Person.find(params[:id])
  end

  def person_params
    @person_params = params.require(:person).permit(:firstname, :lastname, :dob)
  end

end
