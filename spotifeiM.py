open ("cadastros.txt","a+")
open ("historico.txt", "a+")
open ("musicas_curtidas.txt","a+")




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
    return menu_inicial(nome)

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
            ...
        elif opcao == "3":
            playlist()
            break
        else:
            print("Opção inválida.")
             
def buscar_musicas(usuario):
        busca = input("\n Digite o nome da musica: ")
        with open("musicas.txt", "r") as musicas:
            salve = musicas.readlines()
            for linha in salve:
                titulo, nome_artista, genero, duracao = linha.strip().split(", ")
                if busca.lower() == titulo.lower():
                    print(f"\n{titulo} - {nome_artista} - {genero} - {duracao}")
                    print("1-Curtir Musica")
                    print("2-Descurtir Musica")
                    print("3-Voltar")
                    opcao = input("escolha uma opção: ")
                    if opcao == "1":
                        print("\n musica curtida.")
                        with open ("musicas_curtidas.txt", "+r") as musicas_curtidas:
                            with open  ("historico.txt", "a+") as historico:
                                historico.write(f"\n {titulo} curtida")
                                musicas_curtidas.write(f"{titulo}")
                    elif opcao == "2":
                        print("musica descurtida.")
                    elif opcao == "3":
                        return menu_principal(usuario)  
                    break      
                else:
                    print("Musica não encontrada")

def playlist(): # colocar (nome)
    print("\n1- Criar Playlist")
    print("2- Editar Playlist")
    print("3- Excluir Playlist")
    print("4- Voltar")
    a = input("Escolha uma opção: ")
    if a == "1":
        # nome_playlist = input("Digite o nome da playlist: ")
         musicname = input("Digite o nome da musica que deseja adicionar na playlist: ")
         with open("playlist.txt", "a+") as playlists:
             with open("musicas.txt","r") as musicas:
               # with open("cadastros.txt", "r") as cadastro:    isso é pra depois talvez      
                 leitura = musicas.readlines()
                 for linha in leitura:         
                    nome_musica, nome_artista, genero, duracao = linha.strip().split(", ")
                    if musicname.lower() == nome_musica.lower():
                       # ver_nome = playlists.readlines()
                       # for line in ver_nome:
                           # if nome in line:
                                playlists.write(f"{nome_musica}\n ")
                                print("\nmusica adicionada a playlist")
                                return  playlist()
                           # else:
                            #    playlists.write(f"{nome}: {nome_musica}")
                            #    print("\nmusica adicionada a playlist")
                             #   return  playlist()
                    else:
                        print("Musica não encontrada")
    if a =='2':
        nome_playlist2 = input("Digite o nome da playlist que deseja editar")
        with open("playlist.txt", "r") as playlists2:
            leitura2 = playlists2.readlines()
            for linha in leitura2:
                if nome_playlist2 in linha:
                    ...

    
    if a == "3":
        print("Digite o nome da musica que deseja excluir da playlist: ")

        ...
    if a =="4":
        return menu_principal()



        
# Imagine, John Lennon, Rock, 3:04
# Bohemian Rhapsody, Queen, Rock, 5:55
# Shape of You, Ed Sheeran, Pop, 4:24
# Blinding Lights, The Weeknd, Synthpop, 3:20

menu_inicial()  
