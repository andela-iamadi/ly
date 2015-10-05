class Url < ActiveRecord::Base
  has_many :hits
  belongs_to :user, counter_cache: true
  default_scope {order('created_at desc')}

  VALID_URL_REGEX = /https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~\/#=]{2,256}\.[a-z]{2,4}\b([-a-zA-Z0-9@:%_\+.~=#?&]*)/

  validates :url, presence: true, length: { maximum: 1000 },
                  format: { with: VALID_URL_REGEX }
                  # uniqueness: { scope: :user_id, case_sensitive: false }
end
