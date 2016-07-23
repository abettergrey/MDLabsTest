# other attributes: analyte_name:string, result_range:string
class Analyte < ActiveRecord::Base
  has_many :results
end