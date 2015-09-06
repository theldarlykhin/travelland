json.array!(@tour_programs) do |tour_program|
  json.extract! tour_program, :id, :title, :program_details
  json.url tour_program_url(tour_program, format: :json)
end
