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

require 'rails_helper'

RSpec.describe Comment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
