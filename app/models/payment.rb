# Payments are an interface between users and stripe charges
class Payment < ActiveRecord::Base
  belongs_to :user
end
