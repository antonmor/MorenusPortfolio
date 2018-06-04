class Porfolio < ApplicationRecord
  validates_presence_of :title, :body
end
