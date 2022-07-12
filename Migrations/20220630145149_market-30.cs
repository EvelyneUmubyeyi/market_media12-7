using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace MarketMedia.Migrations
{
    public partial class market30 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "quantity",
                table: "ProductSellerOutputDtos");

            migrationBuilder.DropColumn(
                name: "quantity_measurement",
                table: "ProductSellerOutputDtos");

            migrationBuilder.DropColumn(
                name: "quantity",
                table: "ProductSellerInputDtos");

            migrationBuilder.DropColumn(
                name: "quantity_measurement",
                table: "ProductSellerInputDtos");

            migrationBuilder.DropColumn(
                name: "quantity",
                schema: "Lookup",
                table: "ProductSeller");

            migrationBuilder.DropColumn(
                name: "quantity_measurement",
                schema: "Lookup",
                table: "ProductSeller");

            migrationBuilder.DropColumn(
                name: "CategoryImg",
                table: "CategoryOutputDtos");

            migrationBuilder.DropColumn(
                name: "CategoryImg",
                table: "CategoryInputDtos");

            migrationBuilder.DropColumn(
                name: "CategoryImg",
                schema: "Lookup",
                table: "Category");

            migrationBuilder.AddColumn<int>(
                name: "quantity",
                table: "ProductOutputDtos",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "quantity_measurement",
                table: "ProductOutputDtos",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "quantity",
                table: "ProductInputDtos",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "quantity_measurement",
                table: "ProductInputDtos",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "quantity",
                schema: "Lookup",
                table: "Product",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "quantity_measurement",
                schema: "Lookup",
                table: "Product",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "SellerInfoOutputDtos",
                columns: table => new
                {
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    location = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    category = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    rating = table.Column<decimal>(type: "decimal(18,2)", nullable: true),
                    number_of_ratings = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "SellerInfoOutputDtos");

            migrationBuilder.DropColumn(
                name: "quantity",
                table: "ProductOutputDtos");

            migrationBuilder.DropColumn(
                name: "quantity_measurement",
                table: "ProductOutputDtos");

            migrationBuilder.DropColumn(
                name: "quantity",
                table: "ProductInputDtos");

            migrationBuilder.DropColumn(
                name: "quantity_measurement",
                table: "ProductInputDtos");

            migrationBuilder.DropColumn(
                name: "quantity",
                schema: "Lookup",
                table: "Product");

            migrationBuilder.DropColumn(
                name: "quantity_measurement",
                schema: "Lookup",
                table: "Product");

            migrationBuilder.AddColumn<int>(
                name: "quantity",
                table: "ProductSellerOutputDtos",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "quantity_measurement",
                table: "ProductSellerOutputDtos",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "quantity",
                table: "ProductSellerInputDtos",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "quantity_measurement",
                table: "ProductSellerInputDtos",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "quantity",
                schema: "Lookup",
                table: "ProductSeller",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "quantity_measurement",
                schema: "Lookup",
                table: "ProductSeller",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "CategoryImg",
                table: "CategoryOutputDtos",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "CategoryImg",
                table: "CategoryInputDtos",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<byte[]>(
                name: "CategoryImg",
                schema: "Lookup",
                table: "Category",
                type: "varbinary(max)",
                nullable: false,
                defaultValue: new byte[0]);
        }
    }
}
