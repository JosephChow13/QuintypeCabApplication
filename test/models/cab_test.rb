require 'test_helper'

class CabTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Should be invalid without latitude" do
      cab = Cab.new
      assert_not cab.save, "Saved a cab without latitude"
  end

  test "Should be invalid without longitude" do
      cab = Cab.new
      assert_not cab.save, "Saved a cab without longitude"
  end

end
