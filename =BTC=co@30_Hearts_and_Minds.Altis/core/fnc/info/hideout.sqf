
if !(btc_hideouts isEqualTo []) exitWith {};

private _ho = btc_hq;

if (isNull _ho) then {
    _ho = selectRandom btc_hideouts;
    btc_hq =_ho;
};

private _pos = [
    ((getPos _ho) select 0) + (random btc_info_hideout_radius - random btc_info_hideout_radius),
    ((getPos _ho) select 1) + (random btc_info_hideout_radius - random btc_info_hideout_radius)
];

private _marker = createMarker [format ["%1", _pos], _pos];
_marker setMarkerType "hd_warning";
_marker setMarkerText format ["%1m", btc_info_hideout_radius];
_marker setMarkerSize [0.5, 0.5];
_marker setMarkerColor "ColorRed";

private _array = _ho getVariable ["markers", []];

_array pushBack _marker;

_ho setVariable ["markers", _array];
