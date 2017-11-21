require 'rails_helper'

RSpec.describe PeopleController, type: :controller do
  describe "GET index" do
    subject { get :index }
    let!(:people) { create_list(:person, 5) }

    it "should return people" do
      subject
      expect(response.body).to eq(people.to_json)
    end
  end

  describe "GET show" do
    subject { get :show, id: person.id }
    let(:person) { create(:person) }

    it "should return the person" do
      subject
      expect(response.body).to eq(person.to_json)
    end
  end

  describe "POST create" do
    subject { post :create, person: params }
    let(:params) { attributes_for(:person) }

    it "should create the person" do
      subject
      result = JSON.parse(response.body)
      expect(result["id"]).to_not be_nil
      expect(result["firstname"]).to eq(params[:firstname])
    end

  end

  describe "PUT update" do
    subject { put :update, person: params, id: person.id }
    let(:person) { create(:person, firstname: "name") }
    let(:params) { attributes_for(:person, firstname: "smith") }

    it "should update the person" do
      subject
      expect(person.reload.firstname).to eq("smith")
      expect(response.body).to eq(person.to_json)
    end
  end

  describe "DELETE destroy" do
    subject { delete :destroy, id: person.id }
    let(:person) { create(:person) }

    it "should initially have the person existing" do
      expect(person.reload).to_not be_nil
    end

    it "should delete the person" do
      subject
      expect(response.body).to eq(person.to_json)
      expect(Person.find_by_id(person.id)).to be_nil
    end
  end

end
