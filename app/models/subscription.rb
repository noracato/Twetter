class Subscription < ApplicationRecord
belongs_to :feeder, class_name: 'User'
belongs_to :subscriber, class_name: 'User'

validates_uniqueness_of :feeder_id, :scope => [:subscriber_id], message: 'You are already subscribed'
validates :subscriber, :feeder, presence: true

def feeder_name
feeder.name
end

end
