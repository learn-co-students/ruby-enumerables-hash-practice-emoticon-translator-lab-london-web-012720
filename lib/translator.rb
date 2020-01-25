require "yaml"
######################################################################
def load_library(file_path)
emotes = YAML.load_file(file_path)
new_emot = {"get_meaning" => {}, "get_emoticon" => {}}
      emotes.each do |meaning,value|
        new_emot["get_meaning"][value[1]] = meaning #j + meaning
        new_emot["get_emoticon"][value[0]] = value[1] # eng > j
      end
return new_emot
end
######################################################################
def get_japanese_emoticon(file_path = './lib/emoticons.yml', e_emot)
  res = load_library(file_path)

    if res["get_emoticon"].include?(e_emot)
        res["get_emoticon"][e_emot]
    else
      "Sorry, that emoticon was not found"
    end
end
######################################################################
def get_english_meaning(file_path = './lib/emoticons.yml', j_emot)
    final = load_library(file_path)

    if final["get_meaning"].include?(j_emot)
        final["get_meaning"][j_emot]
    else
      "Sorry, that emoticon was not found"
    end
  end
######################################################################
