-- Extract DomainName
# Substring_index

-- solution

select  
    substring_index(
        substring_index(PageURL,"/",3)
        ,"/",-1) Domain
from PageViews

-- input : https://www.example.com/page1
-- output : www.example.com
