class SprintDetails
  attr_reader :sprint_number, :recording, :slides

  def initialize(sprint_number, recording, slides)
    @sprint_number = sprint_number.to_i
    @recording     = recording
    @slides        = slides
  end

  def run
    generate_sprint_details
    copy_sprint_statistics
  end

  def root_dir
    @root_dir ||= File.expand_path("../..", __dir__)
  end

  def sprint_statistics_dir
    # TODO: This is gross, and we need this code in a better location
    @sprint_statistics_dir ||= File.expand_path("../sprint_statistics", root_dir)
  end

  def sprint_range
    @sprint_range ||= begin
      require_relative File.join(sprint_statistics_dir, "sprint_boundary_iterator")

      # TODO: There should be a class method on SprintBoundaryIterator that gets you the Sprint by number
      _number, range = SprintBoundaryIterator.new.detect { |number, _range| number == sprint_number }
      range
    end
  end

  def sprint_details_file
    @sprint_details_file ||= File.join(root_dir, "site/_sprints/#{sprint_number}.md")
  end

  def sprint_statistics_file
    @sprint_statistics_file ||= File.join(root_dir, "site/_data/sprints/gh_#{sprint_number}.yaml")
  end

  def generate_sprint_details
    details = {
      "title"         => "Sprint #{sprint_number} Details",
      "sprint_number" => sprint_number,
      "slides"        => slides,
      "recording"     => recording,
      "start_date"    => sprint_range.begin,
      "end_date"      => sprint_range.end,
      "review_date"   => sprint_range.end + 2.days
    }
    details = details.to_yaml << "---\n"

    File.write(sprint_details_file, details)
  end

  def copy_sprint_statistics
    source_sprint_statistics_file = File.join(sprint_statistics_dir, "sprint_#{sprint_number}.yaml")
    FileUtils.cp(source_sprint_statistics_file, sprint_statistics_file)
  end
end

desc "Publish the given sprint number"
task :publish_sprint, [:sprint_number] do |_task, args|
  sprint_number = args[:sprint_number]

  puts <<~EOS
    Follow these manual steps to prepare for publishing the Sprint:

    Upload the recording to YouTube:
    1. Download the cover slide of the Sprint Google Slide deck via
       File -> Download -> PNG image (.png, current slide)
    2. Set the Title to "Sprint #{sprint_number}"
    3. Set the Thumbnail to the cover slide downloaded in Step 1
    4. Set the Playlist to "Sprint Reviews"
    5. Click Next until the Visibility tab, then set Save or Publish to "Public"
    6. Click Publish
    7. Copy the Video Link
  EOS
  puts
  print "Enter the recording link: "
  recording = STDIN.gets.chomp
  puts

  puts <<~EOS
    Upload the slide deck to SlideShare:
    1. Download the full Sprint Google Slide deck via
       File -> Download -> Microsoft PowerPoint (.pptx)
    2. Click Upload and choose the slide deck downloaded in Step 1
    3. Set the Title to "ManageIQ - Sprint #{sprint_number} Review - Slide Deck"
    4. Set the Description to "ManageIQ Sprint #{sprint_number}"
    5. Set the Category to "Software"
    6. Click Publish
    7. Copy the URL
  EOS
  puts
  print "Enter the slides link: "
  slides = STDIN.gets.chomp
  puts

  SprintDetails.new(sprint_number, recording, slides).run
end

desc "Generate a sprint details template for the given sprint number"
task :generate_sprint_details_template, [:sprint_number] do |_task, args|
  SprintDetails.new(args[:sprint_number], nil, nil).generate_sprint_details
end
