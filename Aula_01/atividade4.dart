class Laptop{
int id; String nome; int ram; double clockCpu;
Laptop(this.id,this.nome,this.ram,this.clockCpu);
Laptop.internet():this(1,"Internet",4,2.0);
Laptop.escritorio():this(2,"Escritorio",8,3.0);
Laptop.programacao():this(3,"Programacao",16,4.0);
void exibir()=>print("$id - $nome - ${ram}GB - ${clockCpu}GHz");
}
void main(){Laptop.internet().exibir();Laptop.escritorio().exibir();Laptop.programacao().exibir();}