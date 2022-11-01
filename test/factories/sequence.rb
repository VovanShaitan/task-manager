FactoryBot.define do
  sequence :string, aliases: [:first_name, :last_name, :password, :avatar, :name] do |n|
    "string#{n}"
  end

  sequence :email do |n|
    "person#{n}@taskmanager.dbp"
  end

  sequence :expired_at do |_n|
    Date.current
  end
end
