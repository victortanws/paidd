class Comment < ApplicationRecord
  # Direct associations

  belongs_to :payment

  belongs_to :user

  # Indirect associations

  # Validations

end
