class Event < ApplicationRecord
    #belongs_to :user
    validates :user_id, {presence: true}

    def user
    #インスタンスメソッド内でselfはインスタンス自身を指す。
    return Post.find_by(id: self.id)
  end
end
