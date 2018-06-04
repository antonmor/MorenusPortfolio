class Porfolio < ApplicationRecord
  validates_presence_of :title, :body

  def self.angular
    where(subtitle: "Angular")
  end

  scope :ruby_on_rails_porfolios_items, -> {  where(subtitle: "Ruby on Rails")}
end
