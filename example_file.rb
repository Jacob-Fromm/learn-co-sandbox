require "pry"
vending_machine = [[[
   {:name=>"Vanilla Cookies", :price=>3},
   {:name=>"Pistachio Cookies", :price=>3},
   {:name=>"Chocolate Cookies", :price=>3},
   {:name=>"Chocolate Chip Cookies", :price=>3}],
  [{:name=>"Tooth-Melters", :price=>12},
   {:name=>"Tooth-Destroyers", :price=>12},
   {:name=>"Enamel Eaters", :price=>12},
   {:name=>"Dentist's Nightmare", :price=>20}],
  [{:name=>"Gummy Sour Apple", :price=>3},
   {:name=>"Gummy Apple", :price=>5},
   {:name=>"Gummy Moldy Apple", :price=>1}]],
 [[{:name=>"Grape Drink", :price=>1},
   {:name=>"Orange Drink", :price=>1},
   {:name=>"Pineapple Drink", :price=>1}],
  [{:name=>"Mints", :price=>13},
   {:name=>"Curiously Toxic Mints", :price=>1000},
   {:name=>"US Mints", :price=>99}]]]
   
#puts vending_machine[0] 
sum = 0 
count1 = 0 
while count1 < vending_machine.count do  
  count2 = 0 
  while count2 < vending_machine[count1].length do
    count3 = 0 
    while count3 < vending_machine[count1][count2].length do 
      sum += vending_machine[count1][count2][count3][:price]
      count3 += 1
    end  
    count2 += 1
  end
  count1 += 1
end

new_array = []
vending_machine.count do |element|
  new_array.push(element)
end   

binding.pry  