function envsource
  for line in (cat $argv | grep -v '^#')
    if test -n "$line"
      set item (string split -m 1 '=' $line)
      set -gx $item[1] $item[2]
    end
  end
end
