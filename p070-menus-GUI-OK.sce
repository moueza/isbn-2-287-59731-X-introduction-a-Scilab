//p70
function mes_menus()
    //if ~MSDOS then
        delmenu(0,"3D &Rot.")
        //else
    //end
    addmenu(0,"Commandes",["Couleurs";"Precision";"quit"])
    Commandes_0=["flag=""Couleurs"""]
endfunction

//then mes_menus ++++  in CLI

//execstr(Commandes_0(1))
