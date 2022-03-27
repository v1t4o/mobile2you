class Diamond
    def self.miner(nuggets)
        extract_diamond(extract_sand(nuggets))  
    end

    private

    def self.extract_sand(nuggets)
        nuggets = nuggets.split('')
        size = nuggets.length - 1
        index = 0
        while index < size
            if nuggets[index] == '.'
                nuggets.delete_at(index)
                index = 0
            end
            index += 1
        end
        
        nuggets
    end

    def self.extract_diamond(minerals)
        diamonds = 0
        index = minerals.length - 1
        while index > 0
            if minerals[index - 1] == '<' and minerals[index] == '>'
                minerals.delete_at(index)
                minerals.delete_at(index - 1)
                diamonds += 1
                index = minerals.length - 1
            else
                index -= 1
            end
        end
        
        "#{diamonds} diamante(s) extraído(s)."
    end
end