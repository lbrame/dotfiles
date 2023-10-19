function combinedcd#cd
    fzf#run({'source': 'list-prjs', 'sink': 'cd'})
    LuaTreeRefresh
endfunction
