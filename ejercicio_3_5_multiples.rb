filename = ARGV.first

$stdin.gets

puts "Abriendo el archivo..."
target = open(filename, 'w')

puts "Borrando contenidos del archivo.  Goodbye!"
target.truncate(0)

puts "Este ejercicio muestra y al final suma todos los multiples de 3 o 5 entre 1 y 1000"
puts "Favor apretar Enter para seguir"
$stdin.gets
i1 = 1.to_i
i2 = 1000.to_i
my_array = []
#=begin
while i1 < i2  # hace un loop entre 1 y 1000
  if i1 % 3 == 0 or i1 % 5 == 0
    my_array.push i1
    puts i1
    target.write i1
    target.write "\n"
end
  i1 +=1
end

puts "Ahora apretar enter para ver la suma de los numeros"
$stdin.gets
#gets.chomp
sum_array = my_array.inject(:+)
puts sum_array
target.write ".................."
target.write "\n"
target.write sum_array
target.close


#=end
