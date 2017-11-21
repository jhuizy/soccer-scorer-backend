require 'rails_helper'

RSpec.describe Person, type: :model do
  describe "#add_to_team" do
    subject { person.add_to_team(team_one) }
    let(:team_one) { create(:team) }
    let(:team_two) { create(:team) }
    let(:person) { create(:person) }

    it "should include only one team" do
      subject
      person.reload
      expect(person.teams).to include(team_one)
      expect(person.teams).to_not include(team_two)
    end
  end
end
