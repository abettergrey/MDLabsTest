# other attributes: sample_name:string, date_received:date, sample_type:string 
class Speciman < ActiveRecord::Base
  belongs_to :physician
  has_many :results
end