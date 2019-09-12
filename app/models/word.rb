class Word < ApplicationRecord
  self.inheritance_column = :_type_disabled # typeカラムは本来はSTIの仕組みで使うため

  has_many :choices
end
