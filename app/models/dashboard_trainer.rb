class DashboardTrainer < ApplicationRecord
    has_many :schedules
    has_many :users, through: :schedules
    has_many :workouts, through: :schedules
    has_many :exercises, through: :workouts

    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :email, presence: true, uniqueness: true

end
