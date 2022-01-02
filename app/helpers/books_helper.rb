module BooksHelper

    def book_pages(sum = "")
        if sum.empty?
          "全然ダメだよー"
        else 
          "結構読んだねー"
        end
    end
end
