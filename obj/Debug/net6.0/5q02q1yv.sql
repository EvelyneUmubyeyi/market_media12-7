IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

IF SCHEMA_ID(N'Lookup') IS NULL EXEC(N'CREATE SCHEMA [Lookup];');
GO

CREATE TABLE [AddressInputDtos] (
    [Details] nvarchar(max) NULL,
    [VillageId] int NULL
);
GO

CREATE TABLE [AddressOutputDtos] (
    [Id] int NOT NULL,
    [Details] nvarchar(max) NULL,
    [VillageId] int NULL
);
GO

CREATE TABLE [BranchInputDtos] (
    [Name] nvarchar(max) NOT NULL,
    [Street_number] nvarchar(max) NULL,
    [Contact] nvarchar(max) NOT NULL,
    [sellerId] int NOT NULL,
    [villageId] int NOT NULL
);
GO

CREATE TABLE [BranchOutputDtos] (
    [Id] int NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [Street_number] nvarchar(max) NULL,
    [Contact] nvarchar(max) NOT NULL,
    [sellerId] int NOT NULL,
    [villageId] int NOT NULL
);
GO

CREATE TABLE [Lookup].[Category] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(max) NOT NULL,
    [CategoryImg] varbinary(max) NOT NULL,
    CONSTRAINT [PK_Category] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [CategoryInputDtos] (
    [Name] nvarchar(max) NOT NULL,
    [CategoryImg] nvarchar(max) NOT NULL
);
GO

CREATE TABLE [CategoryOutputDtos] (
    [Id] int NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [CategoryImg] nvarchar(max) NOT NULL
);
GO

CREATE TABLE [CellInputDtos] (
    [Name] nvarchar(max) NOT NULL,
    [sectorId] int NOT NULL
);
GO

CREATE TABLE [CellOutputDtos] (
    [Id] int NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [sectorId] int NOT NULL
);
GO

CREATE TABLE [Lookup].[Contact] (
    [Id] int NOT NULL IDENTITY,
    [Email] nvarchar(max) NOT NULL,
    [phone] nvarchar(max) NULL,
    CONSTRAINT [PK_Contact] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [ContactInputDtos] (
    [Email] nvarchar(max) NULL,
    [phone] nvarchar(max) NULL
);
GO

CREATE TABLE [ContactOutputDtos] (
    [Id] int NOT NULL,
    [Email] nvarchar(max) NOT NULL,
    [phone] nvarchar(max) NULL
);
GO

CREATE TABLE [CustomerInputDtos] (
    [Name] nvarchar(max) NOT NULL,
    [AddressId] int NOT NULL,
    [ContactId] int NOT NULL
);
GO

CREATE TABLE [CustomerOutputDtos] (
    [Id] int NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [AddressId] int NOT NULL,
    [ContactId] int NOT NULL
);
GO

CREATE TABLE [DistrictInputDtos] (
    [Name] nvarchar(max) NOT NULL,
    [ProvinceId] int NOT NULL
);
GO

CREATE TABLE [DistrictOutputDtos] (
    [Id] int NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [ProvinceId] int NOT NULL
);
GO

CREATE TABLE [OrderInputDtos] (
    [CustomerId] int NOT NULL,
    [ProductId] int NOT NULL,
    [PaymentId] int NOT NULL,
    [OrderTime] datetime2 NOT NULL
);
GO

CREATE TABLE [OrderOutputDtos] (
    [Id] int NOT NULL,
    [CustomerId] int NOT NULL,
    [ProductId] int NOT NULL,
    [PaymentId] int NOT NULL,
    [OrderTime] datetime2 NOT NULL
);
GO

CREATE TABLE [Lookup].[Payment] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(max) NOT NULL,
    [Description] nvarchar(max) NULL,
    CONSTRAINT [PK_Payment] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [PaymentInputDtos] (
    [Name] nvarchar(max) NOT NULL,
    [Description] nvarchar(max) NULL
);
GO

CREATE TABLE [PaymentOutputDtos] (
    [Id] int NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [Description] nvarchar(max) NULL
);
GO

CREATE TABLE [ProductInputDtos] (
    [Name] nvarchar(max) NOT NULL,
    [Quality] nvarchar(max) NOT NULL,
    [CategoryId] int NOT NULL
);
GO

CREATE TABLE [ProductOutputDtos] (
    [Id] int NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [Quality] nvarchar(max) NOT NULL,
    [CategoryId] int NOT NULL
);
GO

CREATE TABLE [ProductSellerInputDtos] (
    [ProductId] int NOT NULL,
    [SellerId] int NOT NULL,
    [price] decimal(18,2) NOT NULL,
    [discount] decimal(18,2) NOT NULL,
    [quantity_measurement] nvarchar(max) NULL,
    [quantity] int NOT NULL,
    [promotion] nvarchar(max) NULL
);
GO

CREATE TABLE [ProductSellerOutputDtos] (
    [ProductId] int NOT NULL,
    [SellerId] int NOT NULL,
    [price] decimal(18,2) NOT NULL,
    [discount] decimal(18,2) NOT NULL,
    [quantity_measurement] nvarchar(max) NULL,
    [quantity] int NOT NULL,
    [promotion] nvarchar(max) NULL,
    [total_price] decimal(18,2) NOT NULL
);
GO

CREATE TABLE [Lookup].[Province] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_Province] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [ProvinceInputDtos] (
    [Name] nvarchar(max) NOT NULL
);
GO

CREATE TABLE [ProvinceOutputDtos] (
    [Id] int NOT NULL,
    [Name] nvarchar(max) NOT NULL
);
GO

CREATE TABLE [SectorInputDtos] (
    [Name] nvarchar(max) NOT NULL,
    [DistrictId] int NOT NULL
);
GO

CREATE TABLE [SectorOutputDtos] (
    [Id] int NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [DistrictId] int NOT NULL
);
GO

CREATE TABLE [Lookup].[Seller] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(max) NOT NULL,
    [TIN_number] int NOT NULL,
    [mobilePaymentCode] nvarchar(max) NULL,
    [about] nvarchar(max) NULL,
    [website] nvarchar(max) NULL,
    [socialmedia] nvarchar(max) NULL,
    CONSTRAINT [PK_Seller] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [SellerInputDtos] (
    [Name] nvarchar(max) NOT NULL,
    [TIN_number] int NOT NULL,
    [mobilePaymentCode] nvarchar(max) NULL,
    [about] nvarchar(max) NULL,
    [website] nvarchar(max) NULL,
    [socialmedia] nvarchar(max) NULL
);
GO

CREATE TABLE [SellerOutputDtos] (
    [Id] int NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [TIN_number] int NOT NULL,
    [mobilePaymentCode] nvarchar(max) NULL,
    [about] nvarchar(max) NULL,
    [website] nvarchar(max) NULL,
    [socialmedia] nvarchar(max) NULL
);
GO

CREATE TABLE [VillageInputDtos] (
    [Name] nvarchar(max) NOT NULL,
    [cellId] int NOT NULL
);
GO

CREATE TABLE [VillageOutputDtos] (
    [Id] int NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [cellId] int NOT NULL
);
GO

CREATE TABLE [Lookup].[Product] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(max) NOT NULL,
    [Quality] nvarchar(max) NOT NULL,
    [CategoryId] int NOT NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Product_Category_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [Lookup].[Category] ([Id]) ON DELETE CASCADE
);
GO

CREATE TABLE [Lookup].[District] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(max) NOT NULL,
    [ProvinceId] int NOT NULL,
    CONSTRAINT [PK_District] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_District_Province_ProvinceId] FOREIGN KEY ([ProvinceId]) REFERENCES [Lookup].[Province] ([Id]) ON DELETE CASCADE
);
GO

CREATE TABLE [Lookup].[ProductSeller] (
    [ProductId] int NOT NULL,
    [SellerId] int NOT NULL,
    [price] decimal(18,2) NOT NULL,
    [discount] decimal(18,4) NOT NULL,
    [quantity_measurement] nvarchar(max) NULL,
    [quantity] int NOT NULL,
    [promotion] nvarchar(max) NULL,
    [total_price] decimal(18,2) NOT NULL,
    CONSTRAINT [PK_ProductSeller] PRIMARY KEY ([ProductId], [SellerId]),
    CONSTRAINT [FK_ProductSeller_Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [Lookup].[Product] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_ProductSeller_Seller_SellerId] FOREIGN KEY ([SellerId]) REFERENCES [Lookup].[Seller] ([Id]) ON DELETE CASCADE
);
GO

CREATE TABLE [Lookup].[Sector] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(max) NOT NULL,
    [DistrictId] int NOT NULL,
    CONSTRAINT [PK_Sector] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Sector_District_DistrictId] FOREIGN KEY ([DistrictId]) REFERENCES [Lookup].[District] ([Id]) ON DELETE CASCADE
);
GO

CREATE TABLE [Lookup].[Cell] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(max) NOT NULL,
    [sectorId] int NOT NULL,
    CONSTRAINT [PK_Cell] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Cell_Sector_sectorId] FOREIGN KEY ([sectorId]) REFERENCES [Lookup].[Sector] ([Id]) ON DELETE CASCADE
);
GO

CREATE TABLE [Lookup].[Village] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(max) NOT NULL,
    [cellId] int NOT NULL,
    CONSTRAINT [PK_Village] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Village_Cell_cellId] FOREIGN KEY ([cellId]) REFERENCES [Lookup].[Cell] ([Id]) ON DELETE CASCADE
);
GO

CREATE TABLE [Lookup].[Address] (
    [Id] int NOT NULL IDENTITY,
    [Details] nvarchar(max) NULL,
    [VillageId] int NULL,
    CONSTRAINT [PK_Address] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Address_Village_VillageId] FOREIGN KEY ([VillageId]) REFERENCES [Lookup].[Village] ([Id])
);
GO

CREATE TABLE [Lookup].[Branch] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(max) NOT NULL,
    [Street_number] nvarchar(max) NULL,
    [Contact] nvarchar(max) NOT NULL,
    [sellerId] int NOT NULL,
    [villageId] int NOT NULL,
    CONSTRAINT [PK_Branch] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Branch_Seller_sellerId] FOREIGN KEY ([sellerId]) REFERENCES [Lookup].[Seller] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_Branch_Village_villageId] FOREIGN KEY ([villageId]) REFERENCES [Lookup].[Village] ([Id]) ON DELETE CASCADE
);
GO

CREATE TABLE [Lookup].[Customer] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(max) NOT NULL,
    [AddressId] int NOT NULL,
    [ContactId] int NOT NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Customer_Address_AddressId] FOREIGN KEY ([AddressId]) REFERENCES [Lookup].[Address] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_Customer_Contact_ContactId] FOREIGN KEY ([ContactId]) REFERENCES [Lookup].[Contact] ([Id]) ON DELETE CASCADE
);
GO

CREATE TABLE [Lookup].[Order] (
    [Id] int NOT NULL IDENTITY,
    [CustomerId] int NOT NULL,
    [ProductId] int NOT NULL,
    [PaymentId] int NOT NULL,
    [OrderTime] datetime2 NOT NULL,
    CONSTRAINT [PK_Order] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Order_Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [Lookup].[Customer] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_Order_Payment_PaymentId] FOREIGN KEY ([PaymentId]) REFERENCES [Lookup].[Payment] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_Order_Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [Lookup].[Product] ([Id]) ON DELETE CASCADE
);
GO

CREATE INDEX [IX_Address_VillageId] ON [Lookup].[Address] ([VillageId]);
GO

CREATE INDEX [IX_Branch_sellerId] ON [Lookup].[Branch] ([sellerId]);
GO

CREATE INDEX [IX_Branch_villageId] ON [Lookup].[Branch] ([villageId]);
GO

CREATE INDEX [IX_Cell_sectorId] ON [Lookup].[Cell] ([sectorId]);
GO

CREATE INDEX [IX_Customer_AddressId] ON [Lookup].[Customer] ([AddressId]);
GO

CREATE INDEX [IX_Customer_ContactId] ON [Lookup].[Customer] ([ContactId]);
GO

CREATE INDEX [IX_District_ProvinceId] ON [Lookup].[District] ([ProvinceId]);
GO

CREATE INDEX [IX_Order_CustomerId] ON [Lookup].[Order] ([CustomerId]);
GO

CREATE INDEX [IX_Order_PaymentId] ON [Lookup].[Order] ([PaymentId]);
GO

CREATE INDEX [IX_Order_ProductId] ON [Lookup].[Order] ([ProductId]);
GO

CREATE INDEX [IX_Product_CategoryId] ON [Lookup].[Product] ([CategoryId]);
GO

CREATE INDEX [IX_ProductSeller_SellerId] ON [Lookup].[ProductSeller] ([SellerId]);
GO

CREATE INDEX [IX_Sector_DistrictId] ON [Lookup].[Sector] ([DistrictId]);
GO

CREATE INDEX [IX_Village_cellId] ON [Lookup].[Village] ([cellId]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220617113319_addedImages', N'6.0.5');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

DECLARE @var0 sysname;
SELECT @var0 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[ProductSellerOutputDtos]') AND [c].[name] = N'quantity');
IF @var0 IS NOT NULL EXEC(N'ALTER TABLE [ProductSellerOutputDtos] DROP CONSTRAINT [' + @var0 + '];');
ALTER TABLE [ProductSellerOutputDtos] DROP COLUMN [quantity];
GO

DECLARE @var1 sysname;
SELECT @var1 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[ProductSellerOutputDtos]') AND [c].[name] = N'quantity_measurement');
IF @var1 IS NOT NULL EXEC(N'ALTER TABLE [ProductSellerOutputDtos] DROP CONSTRAINT [' + @var1 + '];');
ALTER TABLE [ProductSellerOutputDtos] DROP COLUMN [quantity_measurement];
GO

DECLARE @var2 sysname;
SELECT @var2 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[ProductSellerInputDtos]') AND [c].[name] = N'quantity');
IF @var2 IS NOT NULL EXEC(N'ALTER TABLE [ProductSellerInputDtos] DROP CONSTRAINT [' + @var2 + '];');
ALTER TABLE [ProductSellerInputDtos] DROP COLUMN [quantity];
GO

DECLARE @var3 sysname;
SELECT @var3 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[ProductSellerInputDtos]') AND [c].[name] = N'quantity_measurement');
IF @var3 IS NOT NULL EXEC(N'ALTER TABLE [ProductSellerInputDtos] DROP CONSTRAINT [' + @var3 + '];');
ALTER TABLE [ProductSellerInputDtos] DROP COLUMN [quantity_measurement];
GO

DECLARE @var4 sysname;
SELECT @var4 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Lookup].[ProductSeller]') AND [c].[name] = N'quantity');
IF @var4 IS NOT NULL EXEC(N'ALTER TABLE [Lookup].[ProductSeller] DROP CONSTRAINT [' + @var4 + '];');
ALTER TABLE [Lookup].[ProductSeller] DROP COLUMN [quantity];
GO

DECLARE @var5 sysname;
SELECT @var5 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Lookup].[ProductSeller]') AND [c].[name] = N'quantity_measurement');
IF @var5 IS NOT NULL EXEC(N'ALTER TABLE [Lookup].[ProductSeller] DROP CONSTRAINT [' + @var5 + '];');
ALTER TABLE [Lookup].[ProductSeller] DROP COLUMN [quantity_measurement];
GO

DECLARE @var6 sysname;
SELECT @var6 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[CategoryOutputDtos]') AND [c].[name] = N'CategoryImg');
IF @var6 IS NOT NULL EXEC(N'ALTER TABLE [CategoryOutputDtos] DROP CONSTRAINT [' + @var6 + '];');
ALTER TABLE [CategoryOutputDtos] DROP COLUMN [CategoryImg];
GO

DECLARE @var7 sysname;
SELECT @var7 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[CategoryInputDtos]') AND [c].[name] = N'CategoryImg');
IF @var7 IS NOT NULL EXEC(N'ALTER TABLE [CategoryInputDtos] DROP CONSTRAINT [' + @var7 + '];');
ALTER TABLE [CategoryInputDtos] DROP COLUMN [CategoryImg];
GO

DECLARE @var8 sysname;
SELECT @var8 = [d].[name]
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Lookup].[Category]') AND [c].[name] = N'CategoryImg');
IF @var8 IS NOT NULL EXEC(N'ALTER TABLE [Lookup].[Category] DROP CONSTRAINT [' + @var8 + '];');
ALTER TABLE [Lookup].[Category] DROP COLUMN [CategoryImg];
GO

ALTER TABLE [ProductOutputDtos] ADD [quantity] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [ProductOutputDtos] ADD [quantity_measurement] nvarchar(max) NULL;
GO

ALTER TABLE [ProductInputDtos] ADD [quantity] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [ProductInputDtos] ADD [quantity_measurement] nvarchar(max) NULL;
GO

ALTER TABLE [Lookup].[Product] ADD [quantity] int NOT NULL DEFAULT 0;
GO

ALTER TABLE [Lookup].[Product] ADD [quantity_measurement] nvarchar(max) NULL;
GO

CREATE TABLE [SellerInfoOutputDtos] (
    [Name] nvarchar(max) NOT NULL,
    [location] nvarchar(max) NULL,
    [category] nvarchar(max) NULL,
    [rating] decimal(18,2) NULL,
    [number_of_ratings] int NULL
);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220630145149_market-30', N'6.0.5');
GO

COMMIT;
GO

