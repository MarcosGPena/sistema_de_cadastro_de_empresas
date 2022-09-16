import 'package:sistema_registro_empresa/endereco.dart';
import 'package:sistema_registro_empresa/pessoa.dart';

class PessoaFisica extends Pessoa{

  String? _nome;
 get getNome => _nome;

 set setNome(nome) => _nome = nome;

  String? _cpf;
 String get getCpf => _cpf!;

 set setCpf(cpf) {
   
   _cpf = cpf;
   
   }

 Endereco? endereco;

 PessoaFisica(this._nome,this._cpf,this.endereco):super(){}


  @override
  String toString() {
    return '{ Nome : $getNome, CPF : ${getCpf[0]}${getCpf[1]}${getCpf[2]}.${getCpf[3]}${getCpf[4]}${getCpf[5]}.${getCpf[6]}${getCpf[7]}${getCpf[8]}-${getCpf[9]}${getCpf[10]},Endereco Socio : $endereco }';
  }


}