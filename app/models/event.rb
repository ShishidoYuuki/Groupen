class Event < ApplicationRecord
    belongs_to :user

    #タイトルはMAX40文字、本文はMAX500文字
    validates :title, presence: true, length: { maximum: 40 }
    validates :body, presence: true, length: { maximum: 500 }
end
