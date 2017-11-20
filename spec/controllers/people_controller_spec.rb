require 'rails_helper'

RSpec.describe PeopleController, type: :controller do
  describe "GET index" do
    subject { get :index, format: :json }
    let!(:people) { create_list(:person, 5) }

    it "should return people" do
      subject
      expect(response.body).to eq(people.to_json)
    end
  end

  describe "GET show" do
    subject { get :show, id: person.id }
    let!(:person) { create(:person) }

    it "should return the person" do
      subject
      expect(response.body).to eq(person.to_json)
    end
  end

end
