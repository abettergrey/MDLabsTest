# other attributes: result_value:integer, reported_at:datetime
class Result < ActiveRecord::Base
  belongs_to :specimens
  belongs_to :analyte

  def reno_results
  	@reno_results_return = hospitals.where("hospital_address: 775").physicians.specimens.results
  end
end
