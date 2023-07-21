create database cord;
use cord;

create table if not exists tbUsuarios(
codUsuario int not null auto_increment,
nomeUsuario varchar(60) not null,
cpfUsuario varchar(14),
sexoUsuario varchar(1),
enderecoUsuario varchar(60),
dataNascimentoUsuario varchar(10),
telefone1Usuario varchar(13) not null,
telefone2Usuario varchar(13),
emailUsuario varchar(60),
login varchar(20),
senha varchar(20),
perfil varchar(20),
preferenciasUsuario varchar(20),
primary key(codUsuario)
)default charset = utf8;

create table if not exists tbClientes(
codCliente int not null auto_increment,
nomeCliente varchar(60) not null,
cpfCliente varchar(14),
sexoCliente varchar(1),
enderecoCliente varchar(60),
dataNascimentoCliente varchar(10),
telefone1Cliente varchar(13) not null,
telefone2Cliente varchar(13),
emailCliente varchar(60),
primary key(codCliente)
)default charset = utf8;

create table if not exists tbEnderecoClientes(
codCliente int not null auto_increment,
ruaCliente varchar(60) not null,
bairroCliente varchar(20),
cidadeCliente varchar(20),
ufCliente varchar(2),
primary key(codCliente)
)default charset = utf8;

create table if not exists tbEnderecoUsuarios(
codUsuario int not null auto_increment,
ruaUsuario varchar(60) not null,
bairroUsuario varchar(20),
cidadeUsuario varchar(20),
ufUsuario varchar(2),
primary key(codUsuario)
)default charset = utf8;

create table if not exists tbItensConserto(
codItem int not null auto_increment,
refItem varchar(60) not null,
precoCusto varchar(14),
precoVenda varchar(14),
primary key(codItem)
)default charset = utf8;

create table if not exists tbOS(
numOS int not null auto_increment,
descOS varchar(60) not null,
nomeCliente varchar(20),
defeitoOS varchar(300),
garantiaOS varchar(3),
nomeUsuario varchar(60),
dataAberturaOS varchar(14),
dataEncerramentoOS varchar(14),
situacaoOS varchar(20),
laudoTecnicoOS varchar(300),
tecnicoOS varchar(20),
custoTotalOS varchar(14),
primary key(numOS)
)default charset = utf8;

create table if not exists tbPreferenciasUsuarios(
codUsuario int not null auto_increment,
idiomaUsuario varchar(20),
temaCoresUsuario varchar(20),
primary key(codUsuario)
)default charset = utf8;

/* alter table <tabela origem> add constraint <nome restrição> foreing key(<campo tabela origem>) references <tabela destino> (<campo tabela destino>)*/

alter table tbUsuarios 
add constraint FK 
foreign key (enderecoUsuario) 
references tbEnderecoUsuarios ();

