class Provider < ActiveRecord::Base
  validates_formatting_of :phone_number, using: :us_phone
  validates_formatting_of :fax_number, using: :us_phone
end
