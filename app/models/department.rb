class Department < ActiveRecord::Base
  has_many :contacts
end
