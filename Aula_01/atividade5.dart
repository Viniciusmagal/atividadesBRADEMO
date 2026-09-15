import 'dart:io';
class House{
 int id; String name; double price;
 House(this.id,this.name,this.price);
 @override
 String toString()=>"$id - $name - R\$$price";
}
void main(){
 List<House> casas=[];
 for(int i=0;i<3;i++){
  print("ID:"); int id=int.parse(stdin.readLineSync()!);
  print("Nome:"); String nome=stdin.readLineSync()!;
  print("Preço:"); double preco=double.parse(stdin.readLineSync()!);
  casas.add(House(id,nome,preco)..name+=" (Cadastrada)");
 }
 for(var c in casas){print(c);}
}