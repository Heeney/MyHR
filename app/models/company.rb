class Company < ActiveRecord::Base

    def self.import(file) #class method
      CSV.foreach(file.path, headers: false) do |row| # Ignore headers from CSV file.
      Company.create! row.to_hash
    end
  end

end
