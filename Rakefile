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
    system "git pull"
    system 'cp _vimrc ~/.vimrc'
    system 'cp _gvimrc ~/.gvimrc'
    system 'cp -R vim/config/ ~/.vim/config/'
    system 'cp -R vim/ftplugin/ ~/.vim/ftplugin/'
    system 'vim +NeoBundleInstall +qa'
  end

  desc "Push local vim config file to github."
  task :push do
    system 'cp ~/.vimrc _vimrc'
    system 'cp ~/.gvimrc _gvimrc'
    system 'cp -R ~/.vim/config/ vim/config/'
    system 'cp -R ~/.vim/ftplugin/ vim/ftplugin/'
    system "git add ."
    system "git commit -m 'Rake: update vim config file.'"
    system "git push"
  end
end

namespace :bash do

end

namespace :git do

end

namespace :xcode do

end

