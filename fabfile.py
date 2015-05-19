from fabric.api import *
import os

def production():
    env.hosts = [os.environ['ENV_PROD_HOSTS']
    env.user = os.environ['ENV_PROD_USER']
    
    env.password = os.environ['ENV_PROD_PASSWORD']
    
    env.projectHome = "/home/stompthemonsternc/stompnc"
    env.gitRemote = "origin"
    env.gitBranch = "master"
    

def staging():
    env.hosts = [os.environ['ENV_STAGING_HOSTS']
    env.user = os.environ['ENV_STAGING_USER']
    
    env.password = os.environ['ENV_STAGING_PASSWORD']

    env.projectHome = "/home/stompthemonsternc/stompnc"
    env.gitRemote = "origin"
    env.gitBranch = "master"
    
    
def pull():    
    execute(git_pull)

def deploy():
    "Deploying..."
    execute(dependencies)
    execute(migrateDB)
    execute(syncDB)
    execute(collectStatic)
    execute(apacheReboot)
    
def git_pull():
    "Updating the code..."
    run("cd %s; git pull %s %s" % (env.projectHome,env.gitRemote,env.gitBranch))

def git_reset():
    "Resets the repository to specified version."
    run("cd %s; git reset --hard %s" % (env.projectHome,env.hash))

def apacheReboot():
    "Reboot Apache2 server..."
    sudo("/etc/init.d/apache2 restart")
    
def updateAptGet():
    sudo("apt-get update; apt-get upgrade;")    

def dependencies():
    "Syncing Dependencies..."
    sudo("cd %s/setup; pip install -r requirements.txt" % (env.projectHome))    
    
def migrateDB():
    "Migrating DB..."
    run("cd %s/app; python manage.py migrate --all --no-initial-data" % (env.projectHome))   
    
def syncDB():
    "Syncing DB..."
    run("cd %s/app; python manage.py syncdb" % (env.projectHome))   

def collectStatic():
	"Collecting static resources..."
	run("cd %s/app; python manage.py collectstatic" % (env.projectHome))   

def test():
    local("python manage.py test", fail='abort')

def reset(hash):
    """
    Reset all git repositories to specified hash.
    Usage:
        fab reset:repo=my_repo,hash=etcetc123
    """
    env.hash = hash
    execute(git_reset)
    
if __name__ == '__main__':
   import sys
   from fabric.main import main
   sys.argv = ['fab', '-f', __file__,] + sys.argv[1:]
   main()    