FactoryBot.define do
  factory :user do
    email { "rogessonb@gmail.com" }
    characters { [build(:character)] }
  end
end