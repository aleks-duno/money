class Transaction < ActiveRecord::Base
  require 'csv'
  def self.import(file)
    CSV.foreach(file.path, { encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all}) do |row|
      if Transaction.exists?(id: row[:transaction])
        puts 'this user already exists'
      else
        Transaction.create! row.to_hash
      end  
    end
  end 
end 