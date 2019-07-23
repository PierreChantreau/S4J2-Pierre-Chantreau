require 'pry'



class Player
attr_accessor :name, :life_points #autres objets nécessaires ?


def initialize(name)
  @name = name
  return @life_points = 10  #return nécessaire ?
end


def show_state
  @name = name #pas obligé de réidentifier
  @life_points = life_points #pas obligé de réidentifier

  puts "#{name} a #{life_points} point(s) de vie."


end

def gets_damage(damage)


  @life_points = life_points - damage.to_i

  if life_points <= 0 #obligation de mettre le hashtag ?
    puts "le joueur #{name} a été tué!"
  end
end

def attacks(player_attacked)
  #@player = player_attacked #nécessaire ? car écrit ds les consignes de mettre un objet
  puts "le joueur #{name} attaque le joueur #{player_attacked.name}."
  result = compute_damage #définition variable ?
  puts "Il lui inflige #{result} point de dommages !" #pq ne fonctionne pas qd on met compute_damage?
  player_attacked.gets_damage(result)
end

def compute_damage
  return rand(1..6)
end
end


binding.pry
