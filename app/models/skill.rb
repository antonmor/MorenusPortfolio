class Skill < ApplicationRecord
  include Placeholder

  validates_presence_of :title, :percent_utilized

    after_initialize :set_defaults

    def set_defaults #metodo para poner por default la imagen 
      self.badge ||=Placeholder.image_generator(height:'250', width:'250')
    end

end
