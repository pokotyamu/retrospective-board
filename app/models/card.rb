# ## Schema Information
#
# Table name: `cards`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`board_id`**    | `integer`          | `not null`
# **`title`**       | `string`           | `not null`
# **`category`**    | `integer`          | `not null`
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
#
# ### Indexes
#
# * `idx_cards_board_id`:
#     * **`board_id`**
#
# ### Foreign Keys
#
# * `fk_cards_boards` (_ON DELETE => restrict_):
#     * **`board_id => boards.id`**
#

class Card < ApplicationRecord
  belongs_to :board
  has_many :comments, dependent: :destroy

  enum category: { keep: 1, problem: 2 }
end
