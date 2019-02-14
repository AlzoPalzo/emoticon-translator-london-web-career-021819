# require modules here
require 'yaml'

def load_library(path)
  library = YAML.load_file(path)

  new_lib = {"get_meaning" => {}, "get_emoticon" => {}}

  library.each do |meaning, emoticons|
    new_lib["get_meaning"][emoticons[1]] = meaning
    new_lib["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  new_lib
end

def get_japanese_emoticon(path, emoticon)
  library = load_library(path)
  if library["get_emoticon"].has_key?(emoticon)
    library["get_emoticon"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  library = load_library(path)
  if library["get_meaning"][emoticon]
    library["get_meaning"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

