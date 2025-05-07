open ("cadastros.txt","a")


def menu_inicial():
    while True:
        print("\n=== Bem-vindo ao Spotifei ===")
        print("1. Login")
        print("2. Cadastrar")
        print("3. Sair")
        opcao = input("Escolha uma opção: ")
        if opcao == "1":
            usuario = login()
            if usuario:
                menu_principal(usuario)
        elif opcao == "2":
            cadastro()
        elif opcao == "3":
            print("Obrigado por usar o Spotifei!")
            break
        else:
            print("Opção inválida.")

 
def cadastro():
    print("\n=== Cadastro de Usuário ===")
    email = input("Email: ")
    nome = input("Digite seu nome de usuário: ")
    senha = input("Digite sua senha: ")

    with open("cadastros.txt", "r") as arquivo:
        for linha in arquivo:
            if f"Email:{email}" in linha:
                print("Este email já está cadastrado.")
                return

    with open("cadastros.txt", "a") as usuarios:
        usuarios.write(f"Nome: {nome}  Email: {email}  Senha: {senha}\n")
    
    print("Cadastro realizado com sucesso!")
    return menu_inicial()

def login():
    print("\n=== Login ===")
    email = input("Email: ")
    senha = input("Senha: ")
    with open("cadastros.txt", "r") as arquivo:
        for linha in arquivo:
            if f"Email: {email}" in linha and f"Senha: {senha}" in linha:
                print(f"Bem-vindo(a), {email}!")
                return email  
    print("Credenciais inválidas.")
    return None

def menu_principal(usuario):
    while True:
        print("\n=== Menu Spotifei ===")
        print("1. Buscar músicas")
        print("2. Ver músicas curtidas")
        print("3. Gerenciar Playlist")
        print("4. Ver histórico")
        print("3. sair")
        opcao = input("Escolha uma opção: ")
        if opcao == "1":
            buscar_musicas(usuario)
        elif opcao == "2":
            listar_curtidas(usuario)
        elif opcao == "3":
            print("Logout realizado.") 
            break
        else:
            print("Opção inválida.")
             
def buscar_musicas(usuario):
    while True:
        nome = input("\n Digite o nome da musica: ").lower() 
        for m in musicas:
             if nome in m["titulo"].lower():
                print(f"{m['titulo']} - {m['artista']} ({m['genero']}, {m['duracao']})")
                print("1-Curtir Musica")
                print("2-Descurtir Musica")
                print("3-Voltar")
                a = input("escolha uma opção: ")
             if a == "1":
                 print("musica curtida.")
                 open ("musicas_curtidas.txt", "+r")


             elif a == "2":
                 print("musica descurtida.")
             elif a == "3":
                 return menu_principal(usuario)        
        else:
            print("Musica não encontrada")

def listar_curtidas(usuario):
    while True:
        sla = input


def playslist():
    ...



musicas = [
    {"id": 1, "titulo": "Imagine", "artista": "John Lennon", "genero": "Rock", "duracao": "3:04"},
    {"id": 2, "titulo": "Bohemian Rhapsody", "artista": "Queen", "genero": "Rock", "duracao": "5:55"},
    {"id": 3, "titulo": "Shape of You", "artista": "Ed Sheeran", "genero": "Pop", "duracao": "4:24"},
    {"id": 4, "titulo": "Blinding Lights", "artista": "The Weeknd", "genero": "Synthpop", "duracao": "3:20"},
]
menu_inicial()  
