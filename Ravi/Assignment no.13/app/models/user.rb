class User < ApplicationRecord

def self.to_csv
    attributes = %w{first_name last_name phone_no american_address}
    CSV. generate(headers: true) do |csv|
      csv << attributes
      all.each do |user|
          csv << user.attributes.values_at(*attributes)
    end
  end
end


end
