class Porfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,  
                                reject_if: lambda { |attrs| attrs['name'].blank?  } #pasando hashes a un solo campo "name" pero puede ser a varios campos

  include Placeholder

  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: "Angular")
  end

  scope :ruby_on_rails_porfolios_items, -> {  where(subtitle: "Ruby on Rails")}

  after_initialize :set_defaults

    def set_defaults #metodo para poner por default la imagen en main y en thumb
           

      self.main_image ||=Placeholder.image_generator(height:'600', width:'400')
      self.thumb_image ||=Placeholder.image_generator(height:'350', width:'150')
    end

end
