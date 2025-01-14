desc "Generate a sprint details file for the given sprint number"
task :generate_sprint_details, [:sprint_number] do |_task, args|
  # TODO: This is gross, and we need this code in a better location
  require_relative "../../../sprint_statistics/sprint_boundary_iterator"

  # TODO: There should be a class method on SprintBoundaryIterator that gets you the Sprint by number
  number, range = SprintBoundaryIterator.new.detect { |number, _range| number == args[:sprint_number].to_i}

  details = {
    "title"         => "Sprint #{number} Details",
    "sprint_number" => number,
    "slides"        => nil,
    "recording"     => nil,
    "start_date"    => range.begin,
    "end_date"      => range.end,
    "review_date"   => range.end + 2.days
  }
  details = details.to_yaml << "---\n"

  file = File.join(__dir__, "../../site/_sprints/#{number}.md")
  File.write(file, details)
end
