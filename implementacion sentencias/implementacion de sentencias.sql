CREATE USER usuario_1@localhost; -- Se crea al usuario_1 que tendrá permisos solo de consulta

GRANT SELECT ON fixture2022.teams TO usuario_1@localhost; -- Se otorga el permiso consulta en la tabla teams 
GRANT SELECT ON fixture2022.players TO usuario_1@localhost; -- Se otorga el permiso consulta en la tabla players 
GRANT SELECT ON fixture2022.regions TO usuario_1@localhost; -- Se otorga el permiso consulta en la tabla regions
GRANT SELECT ON fixture2022.stats TO usuario_1@localhost; -- Se otorga el permiso consulta en la tabla stats 
GRANT SELECT ON fixture2022.grupos TO usuario_1@localhost; -- Se otorga el permiso consulta en la tabla grupos 
GRANT SELECT ON fixture2022.matches TO usuario_1@localhost; -- Se otorga el permiso consulta en la tabla matches

CREATE USER usuario_2@localhost; -- Se crea al usuario_2 que tendrá permisos solamente de consulta, inserción y modificación

GRANT SELECT, INSERT, UPDATE ON fixture2022.teams TO usuario_2@localhost; -- Se otorga el permiso consulta, inserción y modificación en la tabla tegams 
GRANT SELECT, INSERT, UPDATE ON fixture2022.players TO usuario_2@localhost; -- Se otorga el permiso consulta, inserción y modificación en la tabla players 
GRANT SELECT, INSERT, UPDATE ON fixture2022.regions TO usuario_2@localhost; -- Se otorga el permiso consulta, inserción y modificación en la tabla regions
GRANT SELECT, INSERT, UPDATE ON fixture2022.stats TO usuario_2@localhost;  -- Se otorga el permiso consulta, inserción y modificación en la tabla stats 
GRANT SELECT, INSERT, UPDATE ON fixture2022.grupos TO usuario_2@localhost; -- Se otorga el permiso consulta, inserción y modificación en la tabla grupos 
GRANT SELECT, INSERT, UPDATE ON fixture2022.matches TO usuario_2@localhost; -- Se otorga el permiso consulta, inserción y modificación en la tabla matches

SHOW GRANTS FOR usuario_1@localhost;

SHOW GRANTS FOR usuario_2@localhost;