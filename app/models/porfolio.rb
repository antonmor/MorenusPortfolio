class Porfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: "Angular")
  end

  scope :ruby_on_rails_porfolios_items, -> {  where(subtitle: "Ruby on Rails")}

  after_initialize :set_defaults

    def set_defaults #metodo para poner por default la imagen en main y en thumb
      self.main_image ||="http://via.placeholder.com/600x400"
      self.thumb_image ||="http://via.placeholder.com/350x150"
    end
  if self.main_image == nil
    self.main_image = "http://via.placeholder.com/600x400"


end
