/*

    Initializes spectator units.

*/

(_this select 0) spawn {
    _this enableSimulation false;
    _this allowDamage false;
    _this setPos [0,0,5];

    sleep 3;

	[true] call ace_spectator_fnc_setSpectator;
};
