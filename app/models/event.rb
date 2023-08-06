class Event < ApplicationRecord
    belongs_to :user

    #タイトルはMAX40文字、本文はMAX500文字
end
