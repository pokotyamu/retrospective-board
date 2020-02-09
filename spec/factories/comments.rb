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

FactoryBot.define do
  factory :comment do
    card

    content { "MyString" }
  end
end
