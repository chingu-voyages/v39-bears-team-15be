FactoryBot.define do
  factory :user do
    first_name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
    city { "MyString" }
    address { "MyString" }
    phone { "MyString" }
    country { "MyString" }
  end
end
