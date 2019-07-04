class Contact < ApplicationRecord
  validates :first_name, :last_name, presence: true

  def friendly_updated_at
    updated_at.strftime("%m/%d/%Y")
  end

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

  def japan_country_code_addition
    "+81 #{phone_number}"
  end
end
