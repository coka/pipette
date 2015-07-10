FactoryGirl.define do

  factory :user do
    username "user"
    email "user@example.com"
    password "password"

    trait :flag_name do
      username "usergb"
    end

    factory :user_with_flag_name, traits: [:flag_name]

  end

end
