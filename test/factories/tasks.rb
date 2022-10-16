FactoryBot.define do
  factory :task do
    name
    description { "MyText" }
    author factory: :manager
    assignee factory: :manager
    state { "MyString" }
    expired_at { "2022-10-12" }
  end
end
