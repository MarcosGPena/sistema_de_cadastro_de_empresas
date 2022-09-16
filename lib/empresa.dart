

import 'package:sistema_registro_empresa/endereco.dart';
import 'package:sistema_registro_empresa/pessoa_fisica.dart';

class Empresa {
  
  String? _nomeFantasiaEmpresa;
  String? _razaoSocial;
  String? _cnpjEmpresa;
  Endereco? endereco;
  PessoaFisica? pessoaFisica;
  DateTime? _data;
  
Empresa([this._nomeFantasiaEmpresa,this._razaoSocial,this._cnpjEmpresa,this.endereco,this.pessoaFisica,data,hashCode]){
    
    this._data = DateTime.now();
    
}


 String? get getRazaoSocial => _razaoSocial;

 set setRazaoSocial(String? RazaoSocial) =>_razaoSocial = RazaoSocial;


String? get nomeFantasiaEmpresa => _nomeFantasiaEmpresa;

set nomeFantasiaEmpresa(String? nomeFantasiaEmpresa) =>_nomeFantasiaEmpresa = nomeFantasiaEmpresa;


 set setCnpjEmpresa(String cnpjEmpresa) => _cnpjEmpresa = cnpjEmpresa; 
  


String get getCnpjEmpresa => _cnpjEmpresa!;


  @override
  int get hashCode => super.hashCode;

  get data {
    return _data;
  }


  @override
  String toString() {
    return 
'''
{
      ID : $hashCode, 
      Empresa : $nomeFantasiaEmpresa,
      Razao Social : $getRazaoSocial,
      CNPJ : ${getCnpjEmpresa[0]}${getCnpjEmpresa[1]}.${getCnpjEmpresa[2]}${getCnpjEmpresa[3]}${getCnpjEmpresa[4]}.${getCnpjEmpresa[5]}${getCnpjEmpresa[6]}${getCnpjEmpresa[7]}/${getCnpjEmpresa[8]}${getCnpjEmpresa[9]}${getCnpjEmpresa[10]}${getCnpjEmpresa[11]}-${getCnpjEmpresa[12]}${getCnpjEmpresa[13]}, 
      Endereco Empresa :$endereco, 
      Socio :$pessoaFisica,
      Data de Cadastro: $data,
}
''';
  }
}