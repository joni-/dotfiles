function node
    if which node
      eval (which node) $argv
    else
      nvm use node
      eval (which node) $argv
    end
end

