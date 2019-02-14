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
  library = YAML.load_file(path)
end

def get_english_meaning
  # code goes here
end
