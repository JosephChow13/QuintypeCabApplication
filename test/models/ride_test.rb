require 'test_helper'

class RideTest < ActiveSupport::TestCase
  
    test 'has a valid factory' do
      assert(Ride::RideStateFactory.build(:ride)).to be_valid
    end


    test "if a ride is created" do
      assert(Ride::RideStateFactory.build(:ride))
    end

    test "for a new ride object" do
      ride = Ride.new
      assert(:ride).to be_a_new(ride)
    end

    test "should be a valid ride object" do
      assert(:ride).to be_a_valid
    end

    test "Save ride" do
      assert_not(ride.start_latitude).not_null
      assert_not(ride.start_longitude).not_null
      
    end
 


end
