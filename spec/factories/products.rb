# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name "Headphones"
    price_in_cents 15000
    description "Shut the world out and be antisocial."
  end
end
