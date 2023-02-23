function Commands.Autosort(commandargs)
    -- Smithing Mats
    windower.send_command("puts Meteorite locker")
    windower.send_command("puts *Ore locker")
    windower.send_command("puts *Ingot locker")
    windower.send_command("puts Darksteel Nugget locker")
    
    -- Seals
    windower.send_command("puts Beastmen's Seal sack")
    windower.send_command("puts Kindred's Seal sack")
    windower.send_command("puts Kindred's Crest sack")
    windower.send_command("puts H. Kindred Crest sack")
    windower.send_command("puts S. Kindred Crest sack")

    -- Vouchers
    windower.send_command("puts *Voucher sack")
    windower.send_command("puts Kupon* sack")

    -- Upgrade Items
    windower.send_command("puts beitetsu satchel")
    windower.send_command("puts pluton satchel")
    windower.send_command("puts riftborn boulder satchel")
    windower.send_command("puts heavy metal satchel")
    windower.send_command("puts H-P Bayld satchel")
    windower.send_command("puts Rem's Tale* satchel")
    windower.send_command("puts Eschalixir* satchel")
    windower.send_command("puts Lustreless* satchel")

    -- Upgrade Stones
    windower.send_command("puts Leafslit* satchel")
    windower.send_command("puts Leaftip* satchel")
    windower.send_command("puts Leafdim* satchel")
    windower.send_command("puts Leaforb* satchel")
    windower.send_command("puts Duskslit* satchel")
    windower.send_command("puts Dusktip* satchel")
    windower.send_command("puts Duskdim* satchel")
    windower.send_command("puts Duskorb* satchel")
    windower.send_command("puts Snowslit* satchel")
    windower.send_command("puts Snowtip* satchel")
    windower.send_command("puts Snowdim* satchel")
    windower.send_command("puts Snoworb* satchel")

    -- Report if any bags are getting overfilled
    inv = windower.ffxi.get_bag_info(0);
    safe = windower.ffxi.get_bag_info(1);
    locker = windower.ffxi.get_bag_info(4);
    satchel = windower.ffxi.get_bag_info(5);
    sack = windower.ffxi.get_bag_info(6);
    case = windower.ffxi.get_bag_info(7);
    if(inv.max - inv.count < 5) then
        Utils.Echo("[Autosort]: Inventory is low on space.")
    end;
    if(safe.max - safe.count < 5) then
        Utils.Echo("[Autosort]: Safe is low on space.")
    end;
    if(locker.max - locker.count < 5) then
        Utils.Echo("[Autosort]: Locker is low on space.")
    end;
    if(satchel.max - satchel.count < 5) then
        Utils.Echo("[Autosort]: Satchel is low on space.")
    end;
    if(sack.max - sack.count < 5) then
        Utils.Echo("[Autosort]: Sack is low on space.")
    end;
    if(case.max - case.count < 5) then
        Utils.Echo("[Autosort]: Case is low on space.")
    end;
    

end