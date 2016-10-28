FactoryGirl.define do 
	#Para que funcione: FactoryGirl.create(:user)
	factory :user do 
		sequence(:email) { |n| "user#{n}@factory.com" }
		nick Faker::GameOfThrones.character		

		trait :with_messages do 
			after(:create) do |user|
				3.times { create(:message, user: user) }
			end
		end
		factory :user_with_messages, traits: [:with_messages]
	end
end