namespace :vim do
  desc "Deploy vimrc"
  task :deploy do
    # Bundle and scripts
    system 'mkdir -p ~/.vim/config/plugin/'
    system 'mkdir -p ~/.vim/ftplugin/'
    system 'mkdir -p ~/.vim/bundle'
    system 'git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim'

    system 'cp _vimrc ~/.vimrc'
    system 'cp _gvimrc ~/.gvimrc'
    system 'cp -R vim/config/ ~/.vim/config/'
    system 'cp -R vim/ftplugin/ ~/.vim/ftplugin/'
    system 'vim +NeoBundleInstall +qa'
  end

  desc "Pull vim config file from github and deploy"
  task :pull  do
    system "git pull origin master"
    system 'cp _vimrc ~/.vimrc'
    system 'cp _gvimrc ~/.gvimrc'
    system 'cp -R vim/config/ ~/.vim/config/'
    system 'cp -R vim/ftplugin/ ~/.vim/ftplugin/'
  end

  desc "Push local vim config file to github."
  task :push do
    system 'cp ~/.vimrc _vimrc'
    system 'cp ~/.gvimrc _gvimrc'
    system 'cp -R ~/.vim/config/ vim/config/'
    system 'cp -R ~/.vim/ftplugin/ vim/ftplugin/'
    system "git add ."
    system "git commit -m 'Rake: update vim config file.'"
    system "git push origin master"
  end

  desc "Collect local vim config file"
  task :collect do
    system 'cp ~/.vimrc _vimrc'
    system 'cp ~/.gvimrc _gvimrc'
    system 'cp ~/.zsh_aliases zsh_prezto/_zsh_aliases'
    system 'cp ~/.zshrc zsh_prezto/_zshrc'
    system 'cp ~/.zpreztorc zsh_prezto/_zpreztorc'
    system 'cp -R ~/.vim/config/ vim/config/'
    system 'cp -R ~/.vim/ftplugin/ vim/ftplugin/'
  end

end

namespace :bash do

end

namespace :git do

end

namespace :xcode do

end

