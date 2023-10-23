CREATE PROCEDURE [dbo].[SeedEps]
AS
BEGIN
    DECLARE @check INT = (SELECT COUNT([EpsId]) FROM [dbo].[Eps])

    IF(@check = 0)
    BEGIN
        INSERT INTO [dbo].[Eps] ([EpsName])
        VALUES      ('aliansalud entidad promotora de salud s.a.'),
                    ('anaswayuu'),
                    ('asociación indígena del cauca'),
                    ('asociacion mutual ser empresa solidaria de salud eps'),
                    ('compensar e.p.s.'),
                    ('cooperativa de salud y desarrollo integral zona sur oriental de cartagena'),
                    ('e.p.s. famisanar ltda.'),
                    ('e.p.s. sanitas s.a.'),
                    ('eps servicio occidental de salud s.a.'),
                    ('eps y medicina prepagada suramericana s.a'),
                    ('nueva eps s.a.'),
                    ('salud total s.a.  e.p.s.'),
                    ('saludvida s.a. e.p.s'),
                    ('savia salud eps'),
                    ('capital salud'),
                    ('e.p.s. famisanar ltda.'),
                    ('e.p.s. sanitas  s.a.'),
                    ('eps servicio occidental de salud  s.a.'),
                    ('mallamas'),
                    ('salud total s.a. e.p.s.'),
                    ('capresoca eps'),
                    ('comfenalco valle  e.p.s.'),
                    ('eps convida'),
                    ('saludvida s.a. e.p.s.'),
                    ('pijaos salud epsi'),
                    ('saludvida s.a .e.p.s'),
                    ('asociación indígena del cesar y la guajira dusakawi'),
                    ('eps s.o.s. s.a.'),
                    ('fundación salud mia')

                    

    END
END