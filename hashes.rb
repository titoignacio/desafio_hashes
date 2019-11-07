#1
h = { :claveuno => 10, :clavedos => 20, :clavetres => 30 }


#2 Corrección de errores
#2.1
productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche'
=> 750}

#2.2
producto[2200] = cereal

#2.3
producto[:bebida] = 2000

#3
h = {"x": 1, "y":2}

#4
personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

#4.1
personas_hash = {"Carolina": 32, "Alejandro":28, "María Jesús":41,
"Valentín":19}

#5
personas_hash = {"Carolina": 32, "Alejandro":28, "María Jesús":41,
"Valentín":19}

#5.1
h = {'Enero': 2000, 'Febrero': 3000 ... }

#6
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }



#7
inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
#option 7
def exit
puts "Saliste."
end
#menu
def menu
puts "Qué deseas hacer?"
puts "Opción 1: para agregar un item y su stock. Por ejemplo: iPhone, 20"
puts "Opción 2: para eliminar un item."
puts "Opción 3: para actualizar la información almacenada (item y stock)"
puts "Opción 4: para ver el stock total (suma del stock de cada item) que hay en el
negocio."
puts "Opción 5: para ver el ítem que tiene la mayor cantidad de stock"
puts "Opción 6: para si el producto existe en el inventario"
puts "Opción 7: para salir del programa"
end
menu
option = 0
while option !=7
option = gets.chomp.to_i
case option
when 1
      puts "Agrega item y su stock."
      add = gets.chomp.capitalize
      item_stock = add.split(',')
      inventario == inventario[item_stock[0].to_sym] = item_stock[1].to_i
      puts "Item agregado."
      puts inventario
when 2
  puts "qué item quieres borrar?"
  item = gets.chomp.capitalize
  if inventario.include?(item.to_sym)
    inventario == inventario.delete(item.to_sym)
    puts "#{item} ha sido borrado."
  else
    puts "Item no encontrado."
  end
when 3
  puts "Qué item quieres actualizar?"
  user_item = gets.chomp.capitalize
  if inventario[user_item.to_sym].nil?
    puts "Item no encontrado!"
  else
    puts "Cúal es el nuevo stock?(Ingresa un número)"
    user_stock = gets.chomp
    inventario == inventario[user_item.to_sym] = user_stock.to_i
    puts "#{user_item} ha sido actualizado con un stock de #{user_stock}."
  end
when 4
  puts "El stock total de la tienda es de #{inventario.values.sum} productos."
when 5
  puts "El item con mayor stock es #{inventario.key(inventario.values.max)} con #{inventario.values.max} unidades."
when 6
  puts "Ingresa el numbre del producto a buscar. e.g. Desktop"
   answer = gets.chomp.downcase
   not_found = true
   inventario.each do |product, stock|
     if  product.downcase == answer.to_sym
        puts "El producto #{product} está en stock."
        not_found = false
    end
  end
    puts "El producto #{answer} no está en stock." if not_found
when 7
  exit
else
  menu
end
end
