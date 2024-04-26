class Post < ApplicationRecord
    belongs_to :user
    has_many :posts_tags
    has_many :tags, through: :posts_tags
    belongs_to :parent_post, class_name: "Post", optional: true
    has_many :child_post, class_name: "Post", foreign_key: "parent_post_id"

    validates :title, presence: { message: "Title can't be blank" }
    validates :content, presence: { message: "Content can't be blank" }
    validates :user_id, presence: { message: "User ID can't be blank" }
    validates :answers_count, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: "Answers count must be a non-negative integer" }, presence: { message: "Answers count can't be blank" }
    validates :likes_count, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: "Likes count must be a non-negative integer" }, presence: { message: "Likes count can't be blank" }

    before_save :set_default_time

    private
        def set_default_time
            self.published_at ||= Time.current
        end
end