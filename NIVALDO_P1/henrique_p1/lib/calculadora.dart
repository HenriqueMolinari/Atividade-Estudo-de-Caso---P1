// Definição da classe Calculadora

class Calculadora {
  // ATRIBUTOS
  // Estes atributos vão armazenar os dois números que o usuário digitar
  int num1;
  int num2;

  // MÉTODO CONSTRUTOR
  // Recebe dois números como parâmetros e os atribui as variáveis da classe
  Calculadora(this.num1, this.num2);

  // OPERAÇÕES
  // Método para somar os dois números
  int somar() {
    int resultado = num1 + num2; // soma os números
    display(num1, num2, '+', resultado);
    return resultado; // retorna o valor calculado
  }

  // Método para subtrair dois números
  int subtrair() {
    int resultado = num1 - num2; // subtrai os números
    display(num1, num2, '-', resultado); // exibe a operação
    return resultado;
  }

  // Método para multiplicar dois números
  int multiplicar() {
    int resultado = num1 * num2; // multiplica os números
    display(num1, num2, '*', resultado); // exibe a operação
    return resultado;
  }

  // Metodo para dividir dois números
  double dividir() {
    // Primeiro verifica se o divisor (num2) é zero
    if (num2 == 0) {
      // Caso seja zero, mostra uma mensagem de erro
      print("Erro: divisão por zero não é permitida!");
      return double.nan; // retorna (Not a Number) para indicar erro
    }
    double resultado = num1 / num2; // realiza a divisão normalmente
    display(num1, num2, '/', resultado); // exibe a operação
    return resultado;
  }

  // Imprimir no console a operação feita e o resultado
  void display(dynamic a, dynamic b, String operacao, dynamic resultado) {
    print("$a $operacao $b = $resultado");
  }
}
