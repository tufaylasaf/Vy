import vy

while True:
    text = input("vy > ")
    result, error = vy.run("<stdin>", text)

    if error:
        print(error.as_string())
    elif result:
        print(repr(result))
