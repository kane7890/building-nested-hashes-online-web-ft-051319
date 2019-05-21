def hero_friends
  epic_tragedy = {
   :montague => {
      :patriarch => {name: "Lord Montague", age: "53"},
      :matriarch => {name: "Lady Montague", age: "54"},
      :hero => {name: "Romeo", age: "15", status: "alive"},
      :hero_friends => [
         {name: "Benvolio", age: "17", attitude: "worried"},
         {name: "Steven", age: "30", attitude: "confused"}
      ]
   }, 
   :capulet => {
      :patriarch => {name: "Lord Capulet", age: "50"},
      :matriarch => {name: "Lady Capulet", age: "51"},
      :heroine => {name: "Juliet", age: "15", status: "alive"},
      :heroine_friends => [
          {name: "Mercutio", age: "18", attitude: "hot-headed"}, 
          {name: "Nurse", age: "44", attitude: "worried"}
      ]
   }
  }

  #code your solution here:

  # epic_tragedy[:montague][:hero][:status] = "dead"
  # epic_tragedy[:capulet][:heroine][:status] = "dead"
  # # 
  #write a method called hero_friends that returns the name of the hero_friends from both families using the epic_tragedy hash
  

  namearray=[]
  epic_tragedy.each do |family, familyhash|
    familyhash.each do |role, charinfo|
      if role == :hero_friends || role == :heroine_friends
        charinfo.each do |charhash|
          namearray << charhash[:name]
        end
      end
    end
  end


# => ["Benvolo", "Steven", "Mercutio", "Nurse"]

  #Don't touch the following line! The `bonus` method must return our newly modified epic tragedy hash
  # epic_tragedy
  
  namearray
end 

puts hero_friends