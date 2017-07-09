{
  _x spawn {
    _tk = _this;
    _even = 0;
    _magAP = "";
    _magAT = "";
    while {true} do {
      _even = (_even + 1) mod 2;
      _magtrt = _tk magazinesTurret [0];
      _ammoTrt = _magTrt apply {getText (configfile >> "CfgMagazines" >> _x >> "ammo")};
      _usage = _ammoTrt apply {getText (configfile >> "CfgAmmo" >> _x >> "aiAmmoUsageFlags") splitString " + "};
      _wpnTrt = _tk weaponsTurret [0];
      _cannon = (_wpnTrt select {getText (configfile >> "CfgWeapons" >> _x >> "nameSound") == "cannon"}) select 0;
      _MG = (_wpnTrt select {getText (configfile >> "CfgWeapons" >> _x >> "nameSound") == "mgun"}) select 0;
 
      if (!((_tk nearTargets 1500 select {side (_x select 4) getFriend side _tk < 0.6}) isEqualTo [])) then {
        _tgt = (_tk nearTargets 1500 select {side (_x select 4) getFriend side _tk < 0.6}) select 0 select 4;
 
        if (_tk currentWeaponTurret [0] == _cannon) then {
 
          for "_i" from 0 to count _usage - 1 do {
            call {
              if ("64" in (_usage select _i) && (_tk magazineTurretAmmo [_magTrt select _i, [0]]) >0
                 &&  (_magTrt select _i) in (getarray (configfile >> "CfgWeapons" >> _cannon >> "magazines")))
                 exitWith {_magAP = _magTrt select _i};
              if ("512" in (_usage select _i) && (_tk magazineTurretAmmo [_magTrt select _i, [0]]) >0
                 &&  (_magTrt select _i) in (getarray (configfile >> "CfgWeapons" >> _cannon >> "magazines")))
                 exitWith {_magAT = _magTrt select _i};
            };
          };
          call {
            if (isnil "_tgt") exitWith {};
            if (_tgt isKindOf "man" && _magAP != "") exitWith {_tk loadMagazine [[0],_cannon,_magAP]};
            if (_tgt isKindOf "man" && {_magAP == "" && _magAT != ""}) exitWith {_tk loadMagazine [[0],_cannon,_magAT]};
            if (!(_tgt isKindOf "man") && _magAT != "")  exitWith {_tk loadMagazine [[0],_cannon,_magAT]};
          };
        };
 
        if (!isnil "_tgt") then {
          if (_tk currentWeaponTurret [0] == _MG && secondaryWeapon _tgt != "" && _even == 0) then {
            _tk selectWeaponTurret [_cannon, [0]];
            if (_magAP != "") exitWith {_tk loadMagazine [[0],_cannon,_magAP]};
          };
        };
      
      };
      uisleep 0.2;
    }
  }
} forEach (vehicles select {_x isKindOf "tank"})