require 'color-generator'

def color_from_string str
  str_seed = Digest::MD5.hexdigest(str).to_i(16)
  ColorGenerator.new(saturation: 0.95, lightness: 0.85, seed: str_seed).create_hex
end


def user_info github_user
  $github_users ||= {}

  return $github_users[github_user] if $github_users[github_user]

  data = open("https://api.github.com/users/#{github_user}").read
  $github_users[github_user] = JSON.parse(data)
end


def extensions_info
  return $extensions_info if defined?($extensions_info)

  path = "source/depot/extension"
  info = {}

  extensions = Dir["#{path}/*/"].map {|e| e.split('/').last}

  # Read YML/YAML metadata and normalize
  extensions.each do |ext|
    filename = Dir["#{root}/#{path}/#{ext}/metadata.y*ml"].first

    ext_data = YAML.load_file filename

    ## Normalization

    # Remove single line breaks (hard line wrapping),
    # preserving double (and more) returns
    # ...also strip off white space on the ends
    ext_data['description'].to_s.gsub!(/(\S)\n(\S)/, '\1 \2').to_s.strip!

    # Convert miq_ver, collaborator, tags, and dependencies into arrays
    ext_data['miq_ver'] = ext_data['miq_ver'].to_s.split(/[,\s]+/)
    ext_data['collaborator'] = ext_data['collaborator'].to_s.split(/[,\s]+/)
    ext_data['tags'] = ext_data['tags'].to_s.downcase.split(/[,\s]+/).sort.uniq
    ext_data['dependencies'] = ext_data['dependencies'].to_s.split(/,\s*/)
    ext_data['color'] = "##{color_from_string(ext_data['name'].parameterize)}"

    # Add to info array
    info[ext] = ext_data
  end

  return $extensions_info = info
end


def tags_list tags, default_tag = '', uri_prefix = ''
  return if tags.empty?

  capture_haml do
    haml_tag "div", {class: "tags-list"} do
      haml_tag "ul" do

        tags.each do |tag|
          default = tag == default_tag ? "active" : ""
          haml_tag "li" do
            haml_tag "a", {class: default, href: "#{uri_prefix}#tag/#{tag.parameterize}"} do
              haml_concat tag
            end
          end
        end

      end
    end
  end

end
