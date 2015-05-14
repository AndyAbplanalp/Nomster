FactoryGirl.define do
	factory :comment do
		message "nom nom"
		rating "5_stars"
		association :user
		association :place
	end
	factory :user do
	sequence :email do |n|
		"myemail#{n}@gmail.com"
	end
	password "password"		
	end
	factory :place do
		name "Johnny's Deli"
		description "Meh"
		address "222 Maple Ave, Waukesha, WI 53186"
		latitude(45.3742219)
		longitude(-73.033968)
		association :user
		
	end
end