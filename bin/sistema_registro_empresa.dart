
import 'dart:io';

import 'package:sistema_registro_empresa/empresa.dart';
import 'package:sistema_registro_empresa/endereco.dart';
import 'package:sistema_registro_empresa/pessoa_fisica.dart';

void main() async {

 
List<Empresa> empresas = [];
 

  while(true){
  print(
''' Escolha uma opcao :
    1 - Cadastrar uma nova empresa
    2 - Buscar Empresa cadastrada por CNPJ
    3 - Buscar Empresa por CPF do Sócio
    4 - Listar Empresas cadastradas em ordem alfabética (baseado na Razão Social)
    5 - Excluir uma empresa (por ID)
    6 - Sair'''
  );

  int opcao = int.parse(stdin.readLineSync()!);


  if(opcao == 1){
    

  print('Informe os dados da Empresa : ');
    
    print('Nome Fantasia:');
    String? nomeFantasiaEmpresa = stdin.readLineSync();
   
    print('Razao social da Empresa :');
    String? razaoSocialEmpresa = stdin.readLineSync();
   
   
    print('CNPJ da Empresa:');

    String cnpjEmpresa = stdin.readLineSync()!;

    while(cnpjEmpresa.length != 14){
      print('CNPJ:');
    String cnpj = stdin.readLineSync()!;

    if(cnpj.length == 14){
      cnpjEmpresa = cnpj;
      break;
    }
   
    }

           
    print('Logradouro :');
    String? logradouroEmpresa = stdin.readLineSync()!;
   

    print('Numero :');
    int? numeroEmpresa = int.parse(stdin.readLineSync()!);


    print('Complemento :');
    String? complementoEmpresa = stdin.readLineSync()!;

    print('Bairro :');
    String? bairroEmpresa = stdin.readLineSync()!;

    print('Estado :');
    String estadoEmpresa = stdin.readLineSync()!;

    print('CEP :');

    String cepEmpresa = stdin.readLineSync()!;
  
    while(cepEmpresa.length != 8){
      print('CEP:');

    String? cep = stdin.readLineSync()!;
    
    if(cep.length == 8){
      cepEmpresa = cep;
      break;
    }
   
    }

   
    print('\nInforme os dados do Socio :\n');


    print('Nome :');
    String? nomeDoSocio = stdin.readLineSync()!;

    print('CPF :');

    String cpfDoSocio = stdin.readLineSync()!;
  
    while(cpfDoSocio.length != 11){
      print('CPF:');

    String? cpf = stdin.readLineSync()!;
    
    if(cpf.length == 11){
      cpfDoSocio = cpf;
      break;
    }
   
    }

    print('Logradouro :');
    String? logradouroSocio = stdin.readLineSync()!;


    print('Numero :');
    int? numeroSocio = int.parse(stdin.readLineSync()!);
  
    print('Complemento :');
    String? complementoSocio = stdin.readLineSync()!;
    print('Bairro :');
    String? bairroSocio = stdin.readLineSync()!;
    print('Estado :');
    String? estadoSocio = stdin.readLineSync()!;

    print('CEP :');
    String cepSocio = stdin.readLineSync()!;
    
    while(cepSocio.length != 8){
      print('CEP:');

    String? cep = stdin.readLineSync()!;
    
    if(cep.length == 8){
      cepSocio = cep;
      break;
    }
   
    }
    
    Endereco enderecoEmpresa = Endereco(logradouroEmpresa,numeroEmpresa,complementoEmpresa,bairroEmpresa,estadoEmpresa,cepEmpresa);
    Endereco enderecoDoSocio = Endereco(logradouroSocio, numeroSocio, complementoSocio, bairroSocio, estadoSocio, cepSocio);
    PessoaFisica socio = PessoaFisica(nomeDoSocio, cpfDoSocio,enderecoDoSocio);

    Empresa emp = Empresa(nomeFantasiaEmpresa,razaoSocialEmpresa,cnpjEmpresa,enderecoEmpresa,socio);

  empresas.add(emp);
  
  print('$empresas');

  //final filename = 'empresas.txt';
  //var file = await File(filename).writeAsString(empresas.toString());
   
  }else if(opcao == 2){

    print('Informe o CNPJ desejado :');
    String cnpjProcurado = stdin.readLineSync()!;
    for(final item in empresas){
      if(item.getCnpjEmpresa.toLowerCase().toString() == cnpjProcurado.toLowerCase().toString()){
        print(item);
      }else{
        print('Empresa nao cadastrada!');
      }
    }

    
  }else if(opcao == 3){

    print('Informe o CPF desejado :');
    String cpfProcurado = stdin.readLineSync()!;
    for(final item in empresas){
      if(item.pessoaFisica!.getCpf.toLowerCase().toString() == cpfProcurado.toLowerCase().toString()){
        print(item);
      }else{
        print('Empresa nao cadastrada!');
      }
    }

    

  }else if(opcao == 4){

    empresas.sort((a,b) => (a.getRazaoSocial.toString().toLowerCase()[0]).compareTo(b.getRazaoSocial.toString().toLowerCase()[0]));
    print(empresas);
     
    
  }else if(opcao == 5){
    print('Informe o id desejado :');
    String id = stdin.readLineSync().toString();
   
    for(int i = 0; i < id.length; i++){

      if(id == empresas[i].hashCode.toString()){
        empresas.removeAt(i);
      }
      print('Empresa removida!');
      break;
    }

 } else if(opcao == 6){

    break;
  }else{

    print('opcao invalida!');
    continue;
  }
    
  }
}


