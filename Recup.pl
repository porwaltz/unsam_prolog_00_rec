% Personas
persona(912ec803b2ce49e4a541068d495ab570). % la ingeniera
persona(2e416649e6ca0a1cbf9a1210cf4ce234). % el aviador(vive con la ingeniera)
persona(f55840c38474c1909ce742172a77a013). % el comisario
persona(42fc1cd45335ad42d603657e5d0f2682). % la misteriosa
persona(7024c1db9ae6e2670f8600bb0aeadd5a). % yo
persona(1f5364c58947e14f9afa445bdf1ba4d9). % vive con la ingeniera
persona(8d5ede17b2c2b48de3da2c1e7c3807ec). % John Thompson
persona(33cded4c9ae0ed0bbb723f06022a7f4a). % Tom Johnson

% Gustos
leGusta(912ec803b2ce49e4a541068d495ab570, fuego).
leGusta(912ec803b2ce49e4a541068d495ab570, destruccion).
leGusta(f55840c38474c1909ce742172a77a013, juegos_de_azar).
leGusta(f55840c38474c1909ce742172a77a013, ajedrez).
leGusta(f55840c38474c1909ce742172a77a013, tiro_al_blanco).
leGusta(7024c1db9ae6e2670f8600bb0aeadd5a, aprobar).
leGusta(8d5ede17b2c2b48de3da2c1e7c3807ec, baseball).
leGusta(33cded4c9ae0ed0bbb723f06022a7f4a, donas).

% Trabajos
trabajaEn(2e416649e6ca0a1cbf9a1210cf4ce234, universidad).
trabajaEn(2e416649e6ca0a1cbf9a1210cf4ce234, aviacion_militar).
trabajaEn(f55840c38474c1909ce742172a77a013, inteligencia_militar).
trabajaEn(42fc1cd45335ad42d603657e5d0f2682, pedidos_ya).
trabajaEn(7024c1db9ae6e2670f8600bb0aeadd5a, sarsy_srl).
trabajaEn(8d5ede17b2c2b48de3da2c1e7c3807ec, policia_de_ny).
trabajaEn(33cded4c9ae0ed0bbb723f06022a7f4a, policia_de_la).
trabajaEn(1f5364c58947e14f9afa445bdf1ba4d9, poder_judicial).

% Habilidades
habil(912ec803b2ce49e4a541068d495ab570, bombas).
habil(2e416649e6ca0a1cbf9a1210cf4ce234, conduccion).
habil(f55840c38474c1909ce742172a77a013, tiro_al_blanco).
habil(42fc1cd45335ad42d603657e5d0f2682, correr).
habil(42fc1cd45335ad42d603657e5d0f2682, saltar_la_soga).
habil(7024c1db9ae6e2670f8600bb0aeadd5a, aprobar).
habil(1f5364c58947e14f9afa445bdf1ba4d9, espionaje).
habil(8d5ede17b2c2b48de3da2c1e7c3807ec, baseball).
habil(33cded4c9ae0ed0bbb723f06022a7f4a, interrogatorios).

% Casas
casa(la_severino, 4, 8, 3).
casa(comisaria_48, 5, 5, 1).
casa(lo_de_cucho, 20, 12, 4).
casa(palacio_gigante, 2, 2, 0).
casa(la_torre_inclinada, 10, 10, 4). % nadie vive
casa(madison_circle_garden, 7, 7, 1).

% ViveEn
viveEn(912ec803b2ce49e4a541068d495ab570, la_severino).              % la ingeniera
viveEn(1f5364c58947e14f9afa445bdf1ba4d9, la_severino).              % vive con la ingeniera
viveEn(2e416649e6ca0a1cbf9a1210cf4ce234, la_severino).              % el aviador(vive con la ingeniera)
viveEn(f55840c38474c1909ce742172a77a013, comisaria_48).             % el comisario
viveEn(42fc1cd45335ad42d603657e5d0f2682, lo_de_cucho).              % la misteriosa
viveEn(7024c1db9ae6e2670f8600bb0aeadd5a, palacio_gigante).          % yo
viveEn(8d5ede17b2c2b48de3da2c1e7c3807ec, madison_circle_garden).    % John Thompson
viveEn(33cded4c9ae0ed0bbb723f06022a7f4a, madison_circle_garden).    % Tom Johnson




espotencialGuarida(Casa):-
