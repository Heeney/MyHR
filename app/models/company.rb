class Company < ActiveRecord::Base

    def self.import(file) #class method
      CSV.foreach(file.path, headers: false) do |row| # Ignore headers from CSV file.
      Company.create! row.to_hash
    end
  end
  
  #class method
  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |company|
        csv << company.attributes.values_at(*column_names)
      end
    end
  end
  
end
