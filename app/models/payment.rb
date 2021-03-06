class Payment < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  belongs_to :debtorcreditor,
             :class_name => "User",
             :foreign_key => "other_id"

  belongs_to :user

  # Indirect associations

  # Validations

end
