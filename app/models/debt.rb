class Debt < ApplicationRecord
  # Direct associations

  belongs_to :other,
             :class_name => "User"

  belongs_to :user

  # Indirect associations

  # Validations

end
