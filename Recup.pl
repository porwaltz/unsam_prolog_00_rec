% Personas
%(se agrega p al comienzo para evitar errores de complilacion)
persona(p912ec803b2ce49e4a541068d495ab570). % la ingeniera
persona(p2e416649e6ca0a1cbf9a1210cf4ce234). % el aviador(vive con la ingeniera)
persona(pf55840c38474c1909ce742172a77a013). % el comisario
persona(p42fc1cd45335ad42d603657e5d0f2682). % la misteriosa
persona(p7024c1db9ae6e2670f8600bb0aeadd5a). % yo
persona(p1f5364c58947e14f9afa445bdf1ba4d9). % vive con la ingeniera
persona(p8d5ede17b2c2b48de3da2c1e7c3807ec). % John Thompson
persona(p33cded4c9ae0ed0bbb723f06022a7f4a). % Tom Johnson

% Gustos
leGusta(p912ec803b2ce49e4a541068d495ab570, fuego).
leGusta(p912ec803b2ce49e4a541068d495ab570, destruccion).
leGusta(pf55840c38474c1909ce742172a77a013, juegos_de_azar).
leGusta(pf55840c38474c1909ce742172a77a013, ajedrez).
leGusta(pf55840c38474c1909ce742172a77a013, tiro_al_blanco).
leGusta(p7024c1db9ae6e2670f8600bb0aeadd5a, aprobar).
leGusta(p8d5ede17b2c2b48de3da2c1e7c3807ec, baseball).
leGusta(p8d5ede17b2c2b48de3da2c1e7c3807ec, donas).
leGusta(p33cded4c9ae0ed0bbb723f06022a7f4a, donas).

% Trabajos
trabajoMilitar(aviacion_militar).
trabajoMilitar(inteligencia_militar).

trabajaEn(p912ec803b2ce49e4a541068d495ab570, universidad).
trabajaEn(p2e416649e6ca0a1cbf9a1210cf4ce234, aviacion_militar).
trabajaEn(pf55840c38474c1909ce742172a77a013, inteligencia_militar).
trabajaEn(p42fc1cd45335ad42d603657e5d0f2682, pedidos_ya).
trabajaEn(p7024c1db9ae6e2670f8600bb0aeadd5a, sarsy_srl).
trabajaEn(p8d5ede17b2c2b48de3da2c1e7c3807ec, policia_de_ny).
trabajaEn(p33cded4c9ae0ed0bbb723f06022a7f4a, policia_de_la).
trabajaEn(p1f5364c58947e14f9afa445bdf1ba4d9, poder_judicial).

% Habilidades
habilidadTerrorista(bombas).
habilidadTerrorista(aprobar).
habilidadTerrorista(espionaje).

habil(p912ec803b2ce49e4a541068d495ab570, bombas).
habil(p2e416649e6ca0a1cbf9a1210cf4ce234, conduccion).
habil(pf55840c38474c1909ce742172a77a013, tiro_al_blanco).
habil(p42fc1cd45335ad42d603657e5d0f2682, correr).
habil(p42fc1cd45335ad42d603657e5d0f2682, saltar_la_soga).
habil(p7024c1db9ae6e2670f8600bb0aeadd5a, aprobar).
habil(p1f5364c58947e14f9afa445bdf1ba4d9, espionaje).
habil(p8d5ede17b2c2b48de3da2c1e7c3807ec, baseball).
habil(p33cded4c9ae0ed0bbb723f06022a7f4a, interrogatorios).

% Casas
casa(la_severino, 4, 8, 3).
casa(comisaria_48, 5, 5, 1).
casa(lo_de_cucho, 20, 12, 4).
casa(palacio_gigante, 2, 2, 0).
casa(la_torre_inclinada, 10, 10, 4). % nadie vive
casa(madison_circle_garden, 7, 7, 1).

% ViveEn
viveEn(p912ec803b2ce49e4a541068d495ab570, la_severino).              % la ingeniera
viveEn(p1f5364c58947e14f9afa445bdf1ba4d9, la_severino).              % vive con la ingeniera
viveEn(p2e416649e6ca0a1cbf9a1210cf4ce234, la_severino).              % el aviador(vive con la ingeniera)
viveEn(pf55840c38474c1909ce742172a77a013, comisaria_48).             % el comisario
viveEn(p42fc1cd45335ad42d603657e5d0f2682, lo_de_cucho).              % la misteriosa
viveEn(p7024c1db9ae6e2670f8600bb0aeadd5a, palacio_gigante).          % yo
viveEn(p8d5ede17b2c2b48de3da2c1e7c3807ec, madison_circle_garden).    % John Thompson
viveEn(p33cded4c9ae0ed0bbb723f06022a7f4a, madison_circle_garden).    % Tom Johnson

% Detectar desidentes

esNoMilitar(Trabajo):-
    Trabajo \= aviacion_militar,
    Trabajo \= inteligencia_militar.

% 2
% a) i
esPosibleDesidente(Persona):-
    habilidadTerrorista(Habilidad),
    habil(Persona, Habilidad),
    trabajaEn(Persona, Trabajo),
    esNoMilitar(Trabajo).

% a) ii
esPosibleDesidente(Persona):-
    persona(Persona),
    not(leGusta(Persona, _)).

esPosibleDesidente(Persona):-
    leGusta(Persona, Algo),
    habil(Persona, Algo).

% b) i
noViveNadie(Vivienda):-
    casa(Vivienda, _, _, _),
    not(viveEn(_, Vivienda)).

/* gustoEnComun(Vivienda):-
    viveEn(Persona, Vivienda),
    leGusta(Persona, Algo),
    forall(viveEn(Persona1, Vivienda), (leGusta(Persona1, Algo))). */

gustoEnComun(Vivienda):-
    viveEn(Persona, Vivienda),
    leGusta(Persona, Algo),
    forall((viveEn(Persona1, Vivienda), Persona \= Persona1), (leGusta(Persona1, Algo))).

% c)
esGrande(Width, Height, Tunnels):-
    Width * Height + (10 * Tunnels) > 50.

potencialRebelde(Vivienda):-
    viveEn(Sospechoso, Vivienda),
    esPosibleDesidente(Sospechoso),
    casa(Vivienda, W, H, Tuneles),
    esGrande(W, H, Tuneles).



% 4) esGrande no es inversible mientras que potencialRebelde si lo es porque los parametros de esGrande no forman parte de otros hachos y no pueden deducirse