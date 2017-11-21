FactoryBot.define do
  factory :team do
    name "Team"
    association :competition, factory: :competition
  end
end