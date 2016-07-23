# other attributes: patient_name:string, patient_address:string, 
# patient_phone_number:string
class Patient < ActiveRecord::Base
  belongs_to :physician
  has_many :specimens
end