# other attributes: physician_name:string, physician_phone_number:string, 
# physician_type:string
class Physician < ActiveRecord::Base
  has_many :specimens
  has_many :hospital
  has_many :patients

  validates :physician_phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, 
    message: "bad format" }

  def result_analytes
  	@resluts = self.specimens.resluts.where("reported_at >= 2014-01-01 AND reported_at < 2014-04-01").analytes.analyte_name
  end
end