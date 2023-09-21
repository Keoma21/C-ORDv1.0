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
)default charset = utf8mb4;

select * from tbusuarios;

alter table tbUsuarios
rename column perfil to perfilUsuario;

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
)default charset = utf8mb4;

create table if not exists tbItensConserto(
codItem int not null auto_increment,
refItem varchar(60) not null,
precoCusto varchar(14),
precoVenda varchar(14),
primary key(codItem)
)default charset = utf8mb4;

create table if not exists tbOS(
numOS int not null auto_increment,
idClienteOS int,
descOS varchar(60) not null,
nomeCliente varchar(20),
defeitoOS varchar(300),
garantiaOS varchar(3),
nomeUsuario varchar(60),
dataAberturaOS timestamp default current_timestamp,
dataEncerramentoOS varchar(14),
situacaoOS varchar(20),
conclusaoOS varchar(20),
laudoTecnicoOS varchar(300),
tecnicoOS varchar(20),
custoTotalOS varchar(14),
tipoOS varchar(15),
autorizAteOS varchar(10),
OSAnterior varchar(10),
primary key(numOS),
foreign key(idClienteOS) references tbClientes(codCliente)
)default charset = utf8mb4;

describe tbUsuarios;
insert into tbUsuarios (codUsuario, nomeUsuario, cpfUsuario, sexoUsuario, enderecoUsuario, dataNascimentoUsuario, telefone1Usuario, telefone2Usuario, emailUsuario, senha, perfilUsuario, preferenciasUsuario)
values(
Default,
"Bianca Alana Santos Lopes",
"026.744.350.44",
"F",
"Rua 12",
"21/10/2008",
"5199998888",
"5188889999",
"bi@yahoo.com.br",
"bianca",
"123",
"Atendente");

describe tbClientes;
describe TbOS;
select * from tbclientes;

use cord;
alter table tbOS
add tipoOS varchar(15) not null;

describe tbos;
desc tbClientes;
alter table tbos
add autorizAtéOS varchar(10);
alter table tbos
add OSAnterior varchar(10);
alter table tbos
add conclusaoOS varchar(20) after situacaoOS;

alter table tbos
add idClienteOS int not null after numOS;

alter table tbos
add foreign key (idClienteOS) references tbClientes(codCliente);

alter table tbos
drop column idClienteOS;

describe tbos;

ALTER TABLE
   tbos
CHANGE
   dataAberturaOS
   dataAberturaOS TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
   
   use cord;
   select * from tbos;
   
   select numOS, date_format(dataAberturaOS, '%d/%m/%Y - %H:%i'),descOS,nomeCliente,defeitoOS,garantiaOS,nomeUsuario,situacaoOS,conclusaoOS,laudoTecnicoOS,tecnicoOS,custoTotalOS,tipoOS,autorizAteOS,OSAnterior from tbOS where numOS=1;

