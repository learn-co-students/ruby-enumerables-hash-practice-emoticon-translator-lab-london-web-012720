require "yaml"

def load_library (file_path)
  library = YAML.load_file(file_path)
  new_hash = {:get_meaning => {}, :get_emoticon =>{}}
  library.each_key do |meaning|
    english_emoticon = library[meaning][0]
    japanese_emoticon = library[meaning][1]
    new_hash[:get_meaning][japanese_emoticon] = meaning
    new_hash[:get_emoticon][english_emoticon] = japanese_emoticon
  end
  return new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  if library[:get_emoticon][emoticon] == nil 
    return "Sorry, that emoticon was not found"
  else 
    return library[:get_emoticon][emoticon]
  end
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  if library[:get_meaning][emoticon] == nil 
    return "Sorry, that emoticon was not found"
  else 
    return library[:get_meaning][emoticon]
  end
end