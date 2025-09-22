import 'dart:io';
import 'calculadora.dart';

// Classe Sistema

class SistemaCalculadora {
  // Método principal que inicia o programa
  void iniciar() {
    // Criei um laço "while (true)" que só será interrompido quando o usuário escolher sair
    while (true) {
      // Menu feito so com print
      print("\n======== CALCULADORA CIENTIFICA ============");
      print("Selecione o número correspondente à operação:");
      print("[1] Soma (+)");
      print("[2] Subtração (-)");
      print("[3] Multiplicação (*)");
      print("[4] Divisão (/)");
      print("[5] Todas as opções");
      print("[0] Sair");

      // Lê a opção digitada pelo usuário
      int escolha = int.parse(stdin.readLineSync()!);

      // Caso o usuário escolha "0", encerra o programa
      if (escolha == 0) {
        print("Encerrando a calculadora...");
        break; // sai do laço while
      }

      // Caso contrário, pede os dois números inteiros que serão usados na operação
      print("Digite o primeiro número inteiro: ");
      int num1 = int.parse(stdin.readLineSync()!);

      print("Digite o segundo número inteiro: ");
      int num2 = int.parse(stdin.readLineSync()!);

      // Criei um objeto da classe Calculadora com os dois números fornecidos
      Calculadora calc = Calculadora(num1, num2);

      // switch case para verificar a escolha do usuário (fica mais profisional)
      switch (escolha) {
        case 1:
          calc.somar(); // chama o método de soma
          break;
        case 2:
          calc.subtrair(); // chama o método de subtração
          break;
        case 3:
          calc.multiplicar(); // chama o método de multiplicação
          break;
        case 4:
          calc.dividir(); // chama o método de divisão
          break;
        case 5:
          // Caso o usuário escolha "5", executamos todas as operações
          calc.somar();
          calc.subtrair();
          calc.multiplicar();
          calc.dividir();
          break;
        default:
          // Caso o usuário digite um número que não esteja no menu
          print("Opção inválida! Tente novamente.");
      }
    }
  }
}
