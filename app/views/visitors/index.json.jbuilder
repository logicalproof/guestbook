json.array!(@visitors) do |visitor|
  json.extract! visitor, :id, :first_name, :last_name, :street_address, :city, :state, :zip, :phone, :email, :marital_status, :first_time_visitor, :more_info_requested, :new_to_area, :visit_requested, :learn_about_jesus
  json.url visitor_url(visitor, format: :json)
end
