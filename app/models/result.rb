# other attributes: result_value:integer, reported_at:datetime
class Result < ActiveRecord::Base
  belongs_to :specimens
  belongs_to :analyte

  def reno_results
  	@reno_results_return = []
  	physicians.where("physician_phone_number like?", "#{775}%").each do |physician_item|
  		physician_item.specimens.each do |specimen_item|
  			specimen_item.results.each do |resutls_item|
				reno_results_return.push(resutls_item)
			end
  		end
  	end
  end
end
