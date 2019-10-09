

# Dans un navigateur internet : Creer un nouveau repo sur github.com
#/!\ Ne pas oublier d'initialiser le README.txt /!\
https://github.com/new

# Ouvrir un terminal Linux
# Se placer dans le dossier projet 
  cd THP

# Connexion au remote github
  # Solution 1
    git init 
    git remote add origin https://github.com/140ch204/repo.git
  # Solution 2
    git clone https://github.com/140ch204/repo.git
  # Tester la connexion
    git remote -v

# /!\ Se placer dans le repo local /!\ 
  cd repo

# Gemfile : Utilisation de la bonne version des gem
  # Création du Gemfile :
  touch Gemfile

  # Contenu du GEMFile
    source "https://rubygems.org"
    ruby '2.5.1'
    gem 'rspec'
    gem 'pry'
    gem 'rubocop', '~> 0.57.2'

  # Installation et utilisations des bonnes versions de gem
    bundle install

# Activation rspec
  rspec --init

# Création du dossier des programmes
  mkdir lib

# Création d'un programme et test associé
  touch ./lib/app.rb
  touch ./spec/app_spec.rb

# Versionage avec github. /!\ se placer dans le dossier git initialisé /!\
  git add . # tout ajouter dossier et sous dossiers
  git add lib/ # ajouter tout un dossier
  git commit -m "Message" 
  git push ou git push origin master
  git status 

# Vérification du code 
  rubocop # à lancer dans le dossier à vérifier

