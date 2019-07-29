#write your code here

def translate(string)
    words_array = []
    if string.include?(" ")
        words_array = string.split(" ")
        array_iterate = 0
        while array_iterate < words_array.length do
            words_array[array_iterate] = string_manipulate(words_array[array_iterate])
            array_iterate += 1
        end
        words_array.join(" ")
    else
        string_manipulate(string)
    end    
end

def string_manipulate(word)
    vowels = ["a", "e", "i", "o", "u"]
    final_string = ""
    consonant_count = 0
    if vowels.include?(word[0])
        final_string = word + "ay"
    else
        consonants_removed = 0
        index = 0
        consonant_string = ""
        letter_is_not_vowel = true
        while letter_is_not_vowel == true
            if word[index] == "q" && word[index+1] == "u"
                consonant_string = consonant_string + word[index] + word[index+1]
                consonants_removed += 2
                index += 2
            elsif !vowels.include?(word[index])
                consonant_string = consonant_string + word[index]
                consonants_removed += 1
                index += 1
            else
                letter_is_not_vowel = false
            end
        end
        final_string = word[consonants_removed..word.length-1] + consonant_string + "ay"
    end
    final_string
end