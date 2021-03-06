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

FactoryBot.define do
  factory :board do
    sequence(:title) { |n| "第#{n}回" }
    event_on { Date.today }
  end
end
