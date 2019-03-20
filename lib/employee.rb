class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store, presence: true
  validate :must_carry_womens_or_mens_apparel

  def must_carry_womens_or_mens_apparel
    if !:mens_apparel && !:womens_apparel
      errors.add(:mens_apparel, "Must carry one type of clothes")
      errors.add(:womens_apparel, "Must carry one type of clothes")
    end
  end
end
