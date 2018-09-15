FactoryBot.define do
  factory :subscription do
    first_name { "MyString" }
    last_name { "MyString" }
    phone { "MyString" }
    email { "MyString" }
    birthdate { "2018-09-15" }
    gender { "MyString" }
    experience { "MyString" }
    ruby { false }
    rails { false }
    mysq { false }
    github { "MyString" }
  end
end
