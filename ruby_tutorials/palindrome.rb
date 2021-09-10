# Defines the Phrase class
# inherits from  String
# class Phrase < String
    
#     def processor(string)
#         string.downcase
#     end

#     def processed_content
#         processor(self.content)
#     end

#     # Returns true for a palindorome, false otherwise
#     def palindrome?
#         processed_content == processed_content.reverse
#     end

#     # Exercise 7.1.1.1
#     def louder
#         self.upcase
#     end
# end

# # Defines Trnaslated Phrase.
# class TranslatedPhrase < Phrase
#     attr_accessor :translation

#     def initialize(content, translation)
#         super(content)
#         @translation = translation
#     end

#     # Processes that translation for the palindrome testing.
#     def processed_content
#         processor(self.translation)
#     end
# end

module Palindrome
    def palindrome?
        processed_content == processed_content.reverse
    end

    private
        # Returns content for palindrome
        def processed_content
            self.to_s.downcase
        end

end

class String
    include Palindrome
end        


class Integer
    include Palindrome
end
