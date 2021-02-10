FactoryBot.define do
  factory :collaterals_tag do
    collateral { nil }
    tag { nil }
    weight { "MyString" }
  end

  factory :tag do
    category { "MyString" }
    name { "MyString" }
  end

  factory :collateral do
    title { "MyString" }
    link { "MyString" }
    content_type { "MyString" }
  end

  factory :user do
    
  end

end
