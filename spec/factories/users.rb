FactoryBot.define do

  factory :user do
    nickname  {"a"}
    password  {"00000000"}
    password_confirmation  {"00000000"}
    sequence(:email) {Faker::Internet.email}
  end

end