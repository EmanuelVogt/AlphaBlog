FactoryBot.define do
    factory :user do
      username { Faker::Name.name }
      email { "email@email.com" }
      password { "password" }
      passwordConfirmation { "password" }
      admin { true }
    end
  end
  