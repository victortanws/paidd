class PaymentInformation < ApplicationRecord
  # Direct associations

  belongs_to :user

  has_many   :users,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
