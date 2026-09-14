class Laptop {
  int id; String nome; int ram; double clockCpu;
  Laptop(this.id,this.nome,this.ram,this.clockCpu);
  void exibir()=>print("ID: $id | Nome: $nome | RAM: ${ram}GB | CPU: ${clockCpu}GHz");
}
void main(){
  [Laptop(1,"Dell",8,3.2),Laptop(2,"Lenovo",16,3.8),Laptop(3,"Acer",32,4.2)].forEach((l)=>l.exibir());
}