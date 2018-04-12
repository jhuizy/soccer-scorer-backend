require 'rails_helper'

RSpec.describe "People management", :type => :request do
  describe "GET /people" do
    subject { get "/people" }

    context "when there is no people" do
      it "should return empty array" do
        subject
        expect(response.body).to eq("[]")
      end
    end

    context "when there are people" do
      let!(:people) { create_list(:person, 5) }
      it "should return a list of the people" do
        subject
        expect(JSON.parse(response.body).size).to eq(people.size)
      end
    end
  end
end
