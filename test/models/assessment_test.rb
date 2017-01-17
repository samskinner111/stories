require 'test_helper'

class AssessmentTest < ActiveSupport::TestCase
  test 'fixture sanity' do
    st = assessments(:one)
    assert_instance_of Assessment, st
    assert st.valid?
    assert_empty st.errors
    assert st.persisted?
  end
end
