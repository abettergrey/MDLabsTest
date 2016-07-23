# other attributes: hospital_name:string, hospital_address:string, 
class Hospital < ActiveRecord::Base
  has_many :physicians
end