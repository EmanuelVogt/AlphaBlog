FactoryBot.define do
    factory :article do
      title { Faker::Movies::Hobbit.character }
      description { Faker::Lorem.paragraph_by_chars(number: 100, supplemental: false)  }
      user
    end
  end
  