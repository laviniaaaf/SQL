insert into ATO_ator_novo (ato_nm_ator, ato_sx_ator, ato_dt_nascimento, ato_rg_ator, ato_cd_nacionalidade) values
	('Rodrigo Santoro', 'M', '22/08/1975', '15523655', '1'),
	('Adam Richard Sandler', 'M', '09/09/1966', '85545253', '2');

DELETE FROM ATO_ator_novo WHERE ato_sx_ator = 'M';

DELETE FROM ATO_ator WHERE ato_nm_ator IN (SELECT ato_nm_ator FROM ATO_ator_novo);

update PAI_pais set pai_nm_pais = 'Japao', pai_dc_nacionalidade = 'Japonesa' where pai_cd_pais = 4;

select pai_cd_pais, pai_nm_pais from PAI_pais where pai_cd_pais = 1

select ato_nm_ator, ato_sx_ator, ato_dt_nascimento from ATO_ator where (ato_sx_ator = 'M' and year (ato_dt_nascimento)>1970)

select fil_tl_original from FIL_filme where fil_tl_portugues = null

SELECT ATO.ato_nm_ator AS Nome_Ator, PAI.pai_nm_pais AS Nacionalidade FROM ATO_ator AS ATO INNER JOIN PAI_pais AS PAI ON ATO.ato_cd_nacionalidade = PAI.pai_cd_pais ORDER BY Nome_Ator;

SELECT ato_nm_ator AS Nome_Ator, (SELECT pai_nm_pais FROM PAI_pais WHERE pai_cd_pais = ATO.ato_cd_nacionalidade) AS Nacionalidade
FROM ATO_ator AS ATO ORDER BY Nome_Ator;

select distinct ato_cd_nacionalidade from ATO_ator
