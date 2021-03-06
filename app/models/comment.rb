# ## Schema Information
#
# Table name: `comments`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`card_id`**     | `integer`          | `not null`
# **`content`**     | `text`             | `not null`
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
# **`category`**    | `integer`          | `default(0), not null`
#
# ### Indexes
#
# * `idx_comments_card_id`:
#     * **`card_id`**
#
# ### Foreign Keys
#
# * `fk_comments_cards` (_ON DELETE => restrict_):
#     * **`card_id => cards.id`**
#

class Comment < ApplicationRecord
  belongs_to :card

  enum category: { comment: 0, try: 1 }
end
