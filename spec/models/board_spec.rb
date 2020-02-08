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
  describe 'バリデーション' do
    subject { create(:board) }

    context 'title' do
      it '必須' do
        subject.title = nil
        is_expected.to be_invalid

        subject.title = ''
        is_expected.to be_invalid
      end
    end

    context 'event_on' do
      it '必須' do
        subject.title = nil
        is_expected.to be_invalid
      end
    end
  end
end
