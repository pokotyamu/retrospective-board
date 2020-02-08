# ## Schema Information
#
# Table name: `cards`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`title`**       | `string`           | `not null`
# **`category`**    | `integer`          | `not null`
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
#

require 'rails_helper'

RSpec.describe Card, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
