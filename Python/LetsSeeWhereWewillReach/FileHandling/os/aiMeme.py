import os

def memeOfAI():
    try:
        while True:
            user_desire = input("tell me your requriement: ")
            
            if ((('run' in user_desire) or ('execute' in user_desire) or ('launch' in user_desire)) and ('vim' or 'vi ' in user_desire) and (("don't run" not in user_desire) or ("don't execute" not in user_desire) or ("don't launch" not in user_desire))):
                os.system("vi")
            if ((('run' in user_desire) or ('execute' in user_desire) or ('launch' in user_desire)) and ('vscode' or 'vs' or 'visual code' in user_desire) and (("don't run" not in user_desire) or ("don't execute" not in user_desire) or ("don't launch" not in user_desire))):
                os.system("code")
            if ((('show' in user_desire) or ('visualize' in user_desire)) and ('memory' or 'memory usage' in user_desire)):
                os.system("free -h")
            if ((('run' in user_desire) or ('execute' in user_desire) or ('launch' in user_desire)) and ('sql' or 'mysql' in user_desire) and (("don't run" not in user_desire) or ("don't execute" not in user_desire) or ("don't launch" not in user_desire))):
                os.system("sudo service mysql start")
                os.system("mysql -u root -p")
            if ((('configure' in user_desire) or ('run' in user_desire) or ('launch' in user_desire)) and ('minikube cluster' or 'local cluster' or 'cluster' in user_desire) and (("don't run" not in user_desire) or ("don't configure" not in user_desire) or ("don't launch" not in user_desire))):
                os.system("minikube start")
            if('exit' or 'quit' or 'stop' in user_desire):
                break
    except Exception as e:
        print(e)
memeOfAI()