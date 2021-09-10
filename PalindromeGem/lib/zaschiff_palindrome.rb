# frozen_string_literal: true

require_relative "zaschiff_palindrome/version"


class String

    # returns true for a palindrome, flase otherwise
    def palindrome?
        processed_content == processed_content.reverse
    end

    # returns the letters of a string
    def letters
        self.chars.select { |c| c.match(/[a-z]/i) }.join
    end

    private

        # returns contet for palindrome testing
        def processed_content
            self.scan(/[a-z]/i).join.downcase
        end
end
