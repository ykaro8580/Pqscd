import random
import os
import time

def espera():
    for i in range(3):
        print(".", end="", flush=True)
        time.sleep(1)

def limpar():
    os.system("cls" if os.name == "nt" else "clear")

print("Pique esconde Python!!")

pontpc = 0
pontpl = 0
rodada = 1

esconder = input("Escolha im lugar para se esconder (Sala / Cozinha / Quarto)\n").lower()

while rodada <= 3:
    for i in range(1, 6):
        print(f"Contando... {i}")
        time.sleep(1)

    escolhapc = random.choice(["sala", "cozinha", "quarto"])

    print("Pronto ou não, lá vou eu!!\n")
    espera()

    if escolhapc == esconder:
        print("\nVou procurar na(o) ",escolhapc,"\n")
        espera()
        print("\nTe achei!!\n")
        pontpc += 1
    else:
        print("\nVou procurar na(o) ",escolhapc,"\n")
        espera()
        print("\nVocê escapou!!\n")
        pontpl += 1

        print("Pontuação: PC =", pontpc, "PL =", pontpl, "\n")

    if rodada < 3:
        op = input("Você vai trocar de lugar? (s/n)\n")
        if op == "s":
            esconder = input("Escolha outro lugar para se esconder (Sala / Cozinha / Quarto)\n")
            
    rodada += 1

print("Fim do jogo!!\n")
if pontpc > pontpl:
    print("O PC venceu!!")
elif pontpl > pontpc:
     print("Você venceu!!")
else:
    print("Empate!!")