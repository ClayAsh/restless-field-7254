class Airline < ApplicationRecord
  has_many :flights
  has_many :flight_passengers, through: :flights 
  has_many :passengers, through: :flight_passengers

  def unique_adult_passengers
    passengers.where('age > ?', 18).distinct
  end

end