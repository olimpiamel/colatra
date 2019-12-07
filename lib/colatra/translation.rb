require 'google/cloud/translate'

# accessing the API
translate = Google::Cloud::Translate.new project_id: cadproject


def supported_languages
  #define a variable to store the supported languages in Google Translate
  languages = translate.languages

  #loop to iterate through all the list of supported languages and display each of them for users to know what code to type
  languages.each do |language|
    puts language.language
    puts language.code
end


def translation
  #target language the user wants to obtain
  language2translate = {}
  #text to be translated
  text1 = {}

  #request translation from Google Translate
  translation = translate.translate text1, to: language2translate

  #display translated text
  puts 'Your text translated: #{translation.text.inspect}'

  #create variable to store the origin language and detect it
  origin_lang = translation.detect text

  #display to creator the detected language of origin
  puts 'The origin language is: #{origin_lang.language}'
end
