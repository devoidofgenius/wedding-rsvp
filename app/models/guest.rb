class Guest < ActiveRecord::Base
  belongs_to :user

  validates :user_id, presence: true, uniqueness: true
  validates :ceremony, inclusion: {in: [true, false], message: "You must select Yes or No"}
  validates :reception, inclusion: {in: [true, false], message: "You must select Yes or No"}

end
