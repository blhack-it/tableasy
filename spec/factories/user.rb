class User
  attr_accessor :first_name, :last_name
end

FactoryBot.define do
  factory :user do
    first_name { "John" }
    last_name  { "Doe" }
  end
end
