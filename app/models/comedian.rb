class Comedian < ActiveRecord::Base

  validates_presence_of :name, :age

  def self.average_age
    average(:age).round
  end

  def self.all_cities
    comedians = select(:birthplace).distinct

    cities = comedians.map do |comedian|
      comedian.birthplace
    end
    cities.join(", " "<br/>")
  end
end
