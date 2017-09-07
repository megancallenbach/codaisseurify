FactoryGirl.define do
  factory :artist do
    name {Faker::Name.name}
    genre "Pop"
  end
end
