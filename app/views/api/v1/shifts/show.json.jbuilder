json.shift do
  json.extract! @shift, :id, :start_time, :end_time
end

