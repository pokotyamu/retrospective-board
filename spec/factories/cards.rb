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

FactoryBot.define do
  factory :card do
    board

    sequence(:title) { |n| "第#{n}回" }
    category { 1 }
  end
end
