FactoryGirl.define do
  factory :song do
    name {Faker::Name.title}
    length {Faker::Number.decimal(1, 2)}
    release_date Date.today
    genre "Pop"
    artist {build(:artist)}
  end
end
