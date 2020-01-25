def load_library
    emoticons = YAML.load_file('emoticons.yml')
    emoticons
end

def get_japanese_emoticon(input)
emoticons = load_library
emoticons.each do |emote|
    if input == emote[0]
        return emote[1]
    end
end
return "emote not found"
end


# this one is wrong, i forgot how to extract the key and put it in a string
def get_english_meaning(input)
emoticons = load_library
emoticons.each do |emote|
    if input == emote[1]
        return emote.keys.to_s
    end
end