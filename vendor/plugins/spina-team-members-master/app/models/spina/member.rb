module Spina
  class Member < ActiveRecord::Base
    validates :first_name, :last_name, :role, presence: true
    belongs_to :spina_users

    def full_name
      "#{first_name} #{last_name}"
    end
  end
end
