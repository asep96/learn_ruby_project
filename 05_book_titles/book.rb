class Book
# write your code here

    attr_accessor :title

    def title
        little_words = ["a", "or", "but", "to", "an", "in", "the", "and", "of"]
        if @title[" "]
            title_array = @title.split(" ")
            i=0
            while i < title_array.length
                if i==0 || !little_words.include?(title_array[i])
                    title_array[i] = title_array[i].capitalize
                end
                i+=1
            end
            title_array.join(" ")
        else
            @title.capitalize
        end

    end


end
