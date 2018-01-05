function npm
    if which npm
      eval (which npm) $argv
    else
      nvm use node
      eval (which npm) $argv
    end
end

