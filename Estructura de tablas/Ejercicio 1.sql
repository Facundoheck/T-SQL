CREATE TABLE [dbo].[CURSOS](
	[curso_id] [int] NOT NULL,
	[prof_id] [int] NOT NULL,
	[titulo] [varchar](70) NOT NULL,
	[nivel] [varchar](20) NOT NULL,
	[descripcion] [varchar](400) NOT NULL
) ON [PRIMARY]