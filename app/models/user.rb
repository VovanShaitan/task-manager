class User < ApplicationRecord
  has_secure_password
  
  has_many :my_tasks, class_name: 'Task', foreign_key: :author_id
  has_many :assigned_tasks, class_name: 'Task', foreign_key: :assignee_id
  
  validates :first_name, presence: true, length: { minimum: 2, 
    too_short: "%{count} characters is the minimum allowed" }
  validates :last_name, presence: true, length: { minimum: 2, 
    too_short: "%{count} characters is the minimum allowed" }
  validates :email, presence: true, uniqueness: true, inclusion: { in: ['@'], 
    message: "%{value} must contain the symbol '@'" }
end
