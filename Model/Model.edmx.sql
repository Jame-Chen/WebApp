
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/28/2017 13:53:19
-- Generated from EDMX file: D:\我的文档\Visual Studio 2013\Projects\EFMVCApp\Model\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [test];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Student]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Student];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Student'
CREATE TABLE [dbo].[Student] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Age] int  NULL,
    [Sex] int  NULL,
    [Chinese] decimal(18,0)  NOT NULL,
    [Math] decimal(18,0)  NOT NULL,
    [English] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'Attributes'
CREATE TABLE [dbo].[Attributes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [StudentId] int  NOT NULL,
    [Interest] nvarchar(max)  NULL,
    [Hobbies] nvarchar(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Student'
ALTER TABLE [dbo].[Student]
ADD CONSTRAINT [PK_Student]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Attributes'
ALTER TABLE [dbo].[Attributes]
ADD CONSTRAINT [PK_Attributes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [StudentId] in table 'Attributes'
ALTER TABLE [dbo].[Attributes]
ADD CONSTRAINT [FK_StudentAttributes]
    FOREIGN KEY ([StudentId])
    REFERENCES [dbo].[Student]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StudentAttributes'
CREATE INDEX [IX_FK_StudentAttributes]
ON [dbo].[Attributes]
    ([StudentId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------