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



// button from addmenu example
if (getscilabmode() == "STD") then
    addmenu('foo');
    foo = 'disp(''hello'')';

    addmenu('Hello',['Franck';'Peter'])
    Hello = ['disp(''hello Franck'')';'disp(''hello Peter'')'];

    addmenu('Bye',list(0,'French_Bye'));
    French_Bye = 'disp(''Au revoir'')';

    addmenu(0,'Hello',['Franck';'Peter']);
    Hello_0 = ['disp(''hello Franck'')';'disp(''hello Peter'')'];

    addmenu('Min');
    Min = ['disp(''hello Franck'')'   'disp(''hello Peter'')'];



else
    mprintf('This example requires to use scilab with GUI mode.\n');
end


