import time


acumulador = 0


def sumador():
    global acumulador

    for _ in range(1000):
        tmp = acumulador

        time.sleep(0)
        tmp = tmp + 5
        time.sleep(0)

        acumulador = tmp


def restador():
    global acumulador

    for _ in range(1000):
        tmp = acumulador

        time.sleep(0)
        tmp = tmp - 5
        time.sleep(0)

        acumulador = tmp

momento_arranque = time.perf_counter()
sumador()
restador()
momento_parada = time.perf_counter()


print(f'El valor calculado final es: {acumulador}')
print(f'El tiempo final de ejecución es: {momento_parada - momento_arranque: 0.5f}')