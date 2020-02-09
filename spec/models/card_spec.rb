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

require 'rails_helper'

RSpec.describe Card, type: :model do
  describe 'バリデーション' do
    subject { build(:card) }

    context 'category' do
      it '利用可のカテゴリのみ使える' do
        %i(keep problem).each do |category|
          subject.category = category
          expect(subject).to be_valid
        end
      end
    end
  end
end
