
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/18/2018 17:17:16
-- Generated from EDMX file: C:\Users\Anthony\source\repos\PickNick\DAL\PickNickDB.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [aspnet-PickNick-20180518042418];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Price] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'Orders'
CREATE TABLE [dbo].[Orders] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Date] datetime  NOT NULL,
    [UserID] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ProductOrder'
CREATE TABLE [dbo].[ProductOrder] (
    [Products_Id] int  NOT NULL,
    [Orders_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [PK_Orders]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Products_Id], [Orders_Id] in table 'ProductOrder'
ALTER TABLE [dbo].[ProductOrder]
ADD CONSTRAINT [PK_ProductOrder]
    PRIMARY KEY CLUSTERED ([Products_Id], [Orders_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Products_Id] in table 'ProductOrder'
ALTER TABLE [dbo].[ProductOrder]
ADD CONSTRAINT [FK_ProductOrder_Product]
    FOREIGN KEY ([Products_Id])
    REFERENCES [dbo].[Products]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Orders_Id] in table 'ProductOrder'
ALTER TABLE [dbo].[ProductOrder]
ADD CONSTRAINT [FK_ProductOrder_Order]
    FOREIGN KEY ([Orders_Id])
    REFERENCES [dbo].[Orders]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductOrder_Order'
CREATE INDEX [IX_FK_ProductOrder_Order]
ON [dbo].[ProductOrder]
    ([Orders_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------