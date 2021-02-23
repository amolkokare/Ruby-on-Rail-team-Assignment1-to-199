class User < ApplicationRecord
   paginates_per 2


  def self.to_csv(fields = column_names, options = {})
    CSV.generate(options) do |csv|
      csv << fields
      all.each do |user|
        csv << user.attributes.values_at(*fields)
      end
  end
end

def self.import(file)=
