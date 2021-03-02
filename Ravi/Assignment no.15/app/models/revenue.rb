class Revenue < ApplicationRecord
	
	def self.to_csv
    attributes = %w{item quantity totalsales addition}
    CSV. generate(headers: true) do |csv|
      csv << attributes
      all.each do |revenue|
          csv << revenue.attributes.values_at(*attributes)
    end
  end
end

#def self.import(file)=
#  end
end
