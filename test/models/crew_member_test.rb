require 'test_helper'

class CrewMemberTest < ActiveSupport::TestCase

  def check_field_is_required(field, valid_value)
    crew_member = CrewMember.new
    assert !crew_member.valid?, "requires #{field}"
    refute crew_member.errors[field].empty?, "#{field} error should occur"

    crew_member.send("#{field}=", valid_value)
    crew_member.valid?
    assert crew_member.errors[field].empty?, "#{field} errors should be gone"
  end

  # def check_field_is_exclusive(field, value)
  #   crew_member = CrewMember.new
  #   assert !crew_member.valid?, "requires #{field}"
  # end

  test "name is required" do
    check_field_is_required(:name, "Columbus")
  end

  # test "species are exclusive" do
  #
  # end
end
