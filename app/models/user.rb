class User < ApplicationRecord
	has_many :feeders, through: :subscriptions
end