FactoryGirl.define do
  factory :user do
    name                  'example_user'
    email                 'user@example.com'
    password              'password'
    password_confirmation 'password'
  end
end
