puts "entrez des couleurs séparer par des tirets exple(black-brown-red)"
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
#lire l'entrée de l'utilisateur
couleur= gets.chomp.downcase.strip
# Séparer les couleurs
coul=couleur.split('-')
# Vérifier si toutes les couleurs existent
if coul.all?{|color| couleurs_numeriques.key?(color)}
# Récupérer les deux premières couleurs pour former un nombre
valeurs_numeriques=coul.first(2).map  { |color| couleurs_numeriques[color] }
#puts"#{valeurs_numeriques}"
# Récupérer la troisième couleur (multiplicateur)
multiplicateur=couleurs_numeriques[coul[2]] || 0  # Si absente, on considère 0
 # Construire la valeur finale
  resultat = "#{valeurs_numeriques.join}#{'0' * multiplicateur}"
  puts "Valeur finale : #{resultat}"
else
     # Afficher un message d'erreur avec la liste des couleurs inconnues
  couleurs_inconnues = coul.reject { |color| couleurs_numeriques.key?(color) }
  puts "Erreur : couleur(s) inconnue(s) -> #{couleurs_inconnues.join(', ')}"
end