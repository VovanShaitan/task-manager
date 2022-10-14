FactoryBot.define do
  sequence :string, aliases: [:first_name, :last_name, :password, :email, :avatar, :type] do |n|
    "string#{n}"
  end
end
