
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/19/2018 23:33:25
-- Generated from EDMX file: C:\Users\user\source\repos\EPNMuseum\MuseoVirtual\Areas\Seccion\Models\ImagenModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [sistema];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Imagenes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Imagenes];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Imagenes'
CREATE TABLE [dbo].[Imagenes] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Imagen] varbinary(max)  NULL,
    [Seccion] nvarchar(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'Imagenes'
ALTER TABLE [dbo].[Imagenes]
ADD CONSTRAINT [PK_Imagenes]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------