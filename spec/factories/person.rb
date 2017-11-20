FactoryBot.define do
  factory :person do
    firstname "John"
    lastname "Smith"
    dob DateTime.new(1990, 1, 1)
  end
end