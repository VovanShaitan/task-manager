FactoryBot.define do
  factory :task do
    name { "MyString" }
    description { "MyText" }
    author factory: :manager
    assignee factory: :manager
    state { "MyString" }
    expired_at { "2022-10-12" }
  end
end
