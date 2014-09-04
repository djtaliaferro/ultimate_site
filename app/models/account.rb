class Account < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :accessions
  has_many :addresses
  has_many :providers
end
