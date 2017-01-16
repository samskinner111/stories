require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  test 'fixture sanity' do
    st = stories(:one)
    assert_instance_of Story, st
    assert st.valid?
    assert_empty st.errors
    assert st.persisted?
  end

  test 'requires a description to be present' do
    st = stories(:one)
    st.description = nil
    assert st.invalid?
    st.description = ''
    assert st.invalid?
    st.description = 'anything'
    assert st.valid?
  end
end
