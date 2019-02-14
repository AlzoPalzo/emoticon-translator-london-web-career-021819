# require modules here
require 'yaml'

def load_library(path)
  library = YAML.load_file(path)

  new_lib = {"get_meaning" => {}, "get_emoticon" => {}}

  library.each do |meaning, emoticons|
    new_lib["get_meaning"][emoticons[1]] = meaning
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

