class Ride::Started < Ride::BaseRideState
  def start
    'Cannot start an active ride '
  end

  def end(destination)
    ride = @ride.update_attributes(end_time: DateTime.current,
                                         end_latitude: destination[:end_latitude],
                                         end_longitude: destination[:end_longitude],
                                         status: 'ended')
    if ride
      @ride.cab.unassign
      'Ride ended successfully. You owe #{@ride.payment_amount}'
    else
      "Unable to end ride because: #{@ride.errors.full_messages.join(' ')}"
    end
  end

  def payment_amount
    'Cannot calculate Payment Amount for a ride that has not Ended'
  end

end