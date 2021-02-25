class User < ApplicationRecord
	paginates_per 6
  def self.to_csv(fields = column_names, options = {})
    CSV. generate(options) do |csv|
      csv << column_names
      all.each do |user|
          csv << user.attributes.values_at(*fields)
    end
  end
end

#def self.import(file)=
#  end
end