class Comment < ApplicationRecord
  acts_as_tree order: 'created_at DESC', dependent: :delete_all
end
