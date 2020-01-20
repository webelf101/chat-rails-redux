class Message < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :channel, dependent: :destroy

  validates :content, presence: true
end
