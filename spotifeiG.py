usuarios = []

def main():
    while True:
        print("\n=== Bem-vindo ao Spotifei ===")
        print("1. Login")
        print("2. Cadastrar")
        print("3. Sair")
        opcao = input("Escolha uma opção: ")
        if opcao == "1":
            usuario = login()
            if usuario:
                menu_usuario(usuario)
        elif opcao == "2":
            cadastrar()
        elif opcao == "3":
            print("Obrigado por usar o Spotifei!")
            break
        else:
            print("Opção inválida.")


def cadastrar():
    print("\n=== Cadastro de Usuário ===")
    email = input("Email: ")
    nome = input("digite seu nome de usuario: ")
    for u in usuarios:
        if u["email"] == email:
            print("Email já cadastrado!")
            return
    senha = input("Senha: ")
    usuarios.append({"email": email, "senha": senha, "curtidas": [], "nome": nome})
    print("Cadastro realizado com sucesso!")

def login():
    print("\n=== Login ===")
    email = input("Email: ")
    senha = input("Senha: ")
    for u in usuarios:
        if u["email"] == email and u["senha"] == senha:
            print(f"Bem-vindo(a), {email}!") #ainda não sei como salvar o nome / ver depois
            return u
    print("Credenciais inválidas.")
    return None

def menu_usuario(usuario):
    while True:
        print("\n=== Menu Spotifei ===")
        print("1. Buscar músicas")
        print("2. Curtir música")
        print("3. Descurtir música")
        print("4. Ver músicas curtidas")
        print("5. Logout")
        opcao = input("Escolha uma opção: ")
        if opcao == "1":
            buscar_musicas()
        elif opcao == "2":
            curtir_musica(usuario)
        elif opcao == "3":
            descurtir_musica(usuario)
        elif opcao == "4":
            listar_curtidas(usuario)
        elif opcao == "5":
            print("Logout realizado.")
            break
        else:
            print("Opção inválida.")

def buscar_musicas():
    termo = input("\nDigite o nome da música para buscar: ").lower()
    encontrou = False
    for m in musicas:
        if termo in m["titulo"].lower():
            print(f"[{m['id']}] {m['titulo']} - {m['artista']} ({m['genero']}, {m['duracao']})")
            encontrou = True
            print("1-Curtir Musica")
    if not encontrou:
        print("Nenhuma música encontrada.")

def curtir_musica(usuario):
    termo = input("\nDigite o nome da música para curtir: ").lower()
    for m in musicas:
        if termo in m["titulo"].lower():
            if m["id"] not in usuario["curtidas"]:
                usuario["curtidas"].append(m["id"])
                print(f"Música '{m['titulo']}' curtida!")
            else:
                print("Você já curtiu essa música.")
            return
    print("Música não encontrada.")

def descurtir_musica(usuario):
    if not usuario["curtidas"]:
        print("Você não curtiu nenhuma música ainda.")
        return
    print("\n=== Suas músicas curtidas ===")
    for m in musicas:
        if m["id"] in usuario["curtidas"]:
            print(f"[{m['id']}] {m['titulo']} - {m['artista']}")
    try:
        musica_id = int(input("Digite o ID da música para descurtir: "))
        if musica_id in usuario["curtidas"]:
            usuario["curtidas"].remove(musica_id)
            print("Música descurtida.")
        else:
            print("Essa música não está nas suas curtidas.")
    except:
        print("Entrada inválida.")

def listar_curtidas(usuario):
    print("\n=== Músicas Curtidas ===")
    encontrou = False
    for m in musicas:
        if m["id"] in usuario["curtidas"]:
            print(f"{m['titulo']} - {m['artista']} ({m['genero']}, {m['duracao']})")
            encontrou = True
    if not encontrou:
        print("Você ainda não curtiu nenhuma música.")



musicas = [
    {"id": 1, "titulo": "Imagine", "artista": "John Lennon", "genero": "Rock", "duracao": "3:04"},
    {"id": 2, "titulo": "Bohemian Rhapsody", "artista": "Queen", "genero": "Rock", "duracao": "5:55"},
    {"id": 3, "titulo": "Shape of You", "artista": "Ed Sheeran", "genero": "Pop", "duracao": "4:24"},
    {"id": 4, "titulo": "Blinding Lights", "artista": "The Weeknd", "genero": "Synthpop", "duracao": "3:20"},
]
main()