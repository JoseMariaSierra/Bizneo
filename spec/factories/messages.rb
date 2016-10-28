FactoryGirl.define do 
	#Para que funcione: FactoryGirl.create(:message)
	factory :message do 
		user
		content "My test content"
	end
end