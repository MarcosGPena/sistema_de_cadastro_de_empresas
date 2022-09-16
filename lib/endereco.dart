class Endereco{

String? _logradouro;

get getLogradouro => _logradouro;

 set setLogradouro(logradouro) => logradouro = logradouro;

int? _numero;

get getNumero => _numero;

set setNumero(numero) => _numero = numero;

String? _complemento;

 get getComplemento => _complemento;

 set setComplemento(complemento) => _complemento = complemento;

String? _bairro;

 get getBairro => _bairro;

 set setBairro(bairro) => _bairro = bairro;

String? _estado;

get getEstado => _estado;

set setEstado(estado) => _estado = estado;

String? _cep;
 
 get getCep => _cep;

 set setCep(cep) => _cep = cep;
  

  Endereco(this._logradouro,this._numero,this._complemento,this._bairro,this._estado,this._cep){}


  @override
  String toString() {
    return '{ Logradouro : $getLogradouro, Numero :$getNumero,Complemento : $getComplemento, Bairro : $getBairro,Estado : $getEstado,CEP : ${getCep[0]}${getCep[1]}${getCep[2]}${getCep[3]}${getCep[4]}-${getCep[5]}${getCep[6]}${getCep[7]}}';
  }

 

}