# ## Schema Information
#
# Table name: `boards`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`title`**       | `string`           | `not null`
# **`event_on`**    | `date`             | `not null`
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
#

class Board < ApplicationRecord
  has_many :cards

  validates :title, presence: true
  validates :event_on, presence: true
end
