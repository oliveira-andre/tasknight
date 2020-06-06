FactoryBot.define do
  factory :character do
    character_class { build(:character_class) }
    name  { 'Resque' }
    level { 1 }
    hp    { 10 }
    mp    { 10 }
    gold  { 0 }
  end
end