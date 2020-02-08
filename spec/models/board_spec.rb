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

require 'rails_helper'

RSpec.describe Board, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
