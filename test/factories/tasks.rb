FactoryBot.define do
  factory :task do
    name
    description { "MyText" }
    author factory: :manager
    assignee factory: :developer
    state { "new_task" }
    expired_at { "2022-10-12" }
  end
end
