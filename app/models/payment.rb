class Payment < ApplicationRecord
  # Direct associations

  belongs_to :debtorcreditor,
             :class_name => "User",
             :foreign_key => "other_id"

  belongs_to :user

  # Indirect associations

  # Validations

end
