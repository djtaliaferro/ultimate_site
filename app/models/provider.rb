class Provider < ActiveRecord::Base
  validates_formatting_of :phone_number, using: :us_phone
end
