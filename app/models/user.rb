class User < ApplicationRecord
has_many :subscriptions, foreign_key: :subscriber_id
has_many :feeders, through: :subscriptions
has_many :twets

def feed
twets = feeders.flat_map(&:twets)
end

end