puts "entrez des couleurs"
couleurs_numeriques = {
"black" => 0,
  "brown"=>1,
  "red" => 2,
  "orange" => 3,
  "yellow" => 4,
  "green" => 5,
  "blue" => 6,
  "violet" => 7,
  "grey" => 8,
  "white" => 9,
}
couleur = gets.chomp
coul= couleur.downcase.split("-")
# Sélectionner les deux premières couleurs
premières_couleurs=coul.first(2)

#  Convertir les couleurs en leurs valeurs numériques
valeurs_numeriques=premières_couleurs.map do |color|
  if couleurs_numeriques.key?(color)
    couleurs_numeriques[color]
  else
    "Couleur inconnue : #{couleur}"
  end
end
puts "#{valeurs_numeriques.join}"
    


