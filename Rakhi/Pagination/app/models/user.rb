class User < ApplicationRecord
   paginates_per 2


  def self.to_csv
    CSV.generate do |csv|
end
