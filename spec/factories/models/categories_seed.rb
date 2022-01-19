FactoryBot.define do
    factory :category do
        name { Faker::Movies::Hobbit.character }
    end
end