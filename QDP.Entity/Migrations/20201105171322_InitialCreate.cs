using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace QDP.Entity.Migrations
{
    public partial class InitialCreate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "buildingSheets",
                columns: table => new
                {
                    bs_ID = table.Column<Guid>(nullable: false),
                    bs_formats = table.Column<string>(nullable: true),
                    bs_constructionarea = table.Column<string>(nullable: true),
                    bs_totalheight = table.Column<string>(nullable: true),
                    bs_floorheight = table.Column<string>(nullable: true),
                    bs_totalhousehold = table.Column<string>(nullable: true),
                    bs_housedescription = table.Column<string>(nullable: true),
                    bs_remark = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_buildingSheets", x => x.bs_ID);
                });

            migrationBuilder.CreateTable(
                name: "costSummaries",
                columns: table => new
                {
                    cs_ID = table.Column<Guid>(nullable: false),
                    cs_subjectcode = table.Column<string>(nullable: true),
                    cs_costaccount = table.Column<string>(nullable: true),
                    cs_highclass = table.Column<string>(nullable: true),
                    cs_garage = table.Column<string>(nullable: true),
                    cs_totalcost = table.Column<string>(nullable: true),
                    cs_unilateralcost = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_costSummaries", x => x.cs_ID);
                });

            migrationBuilder.CreateTable(
                name: "highClasses",
                columns: table => new
                {
                    hc_ID = table.Column<Guid>(nullable: false),
                    MyProhc_numberperty = table.Column<string>(nullable: true),
                    hc_costaccount = table.Column<string>(nullable: true),
                    hc_Indicatordescription = table.Column<string>(nullable: true),
                    hc_subjectcode = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_highClasses", x => x.hc_ID);
                });

            migrationBuilder.CreateTable(
                name: "projects",
                columns: table => new
                {
                    p_ID = table.Column<Guid>(nullable: false),
                    p_name = table.Column<string>(nullable: true),
                    p_type = table.Column<string>(nullable: true),
                    p_starttime = table.Column<string>(nullable: true),
                    p_endtime = table.Column<string>(nullable: true),
                    p_overtime = table.Column<string>(nullable: true),
                    p_totalarea = table.Column<string>(nullable: true),
                    p_highclassarea = table.Column<string>(nullable: true),
                    p_brancharea = table.Column<string>(nullable: true),
                    p_basementarea = table.Column<string>(nullable: true),
                    p_area = table.Column<string>(nullable: true),
                    p_fararea = table.Column<string>(nullable: true),
                    p_totalhousehold = table.Column<string>(nullable: true),
                    p_totalheight = table.Column<string>(nullable: true),
                    p_highclassnumber = table.Column<string>(nullable: true),
                    p_highclassheight = table.Column<string>(nullable: true),
                    p_branchnumber = table.Column<string>(nullable: true),
                    p_branchheight = table.Column<string>(nullable: true),
                    p_garagenumber = table.Column<string>(nullable: true),
                    p_garageheight = table.Column<string>(nullable: true),
                    p_structuretype = table.Column<string>(nullable: true),
                    p_basictype = table.Column<string>(nullable: true),
                    P_foundationtreatmenttype = table.Column<string>(nullable: true),
                    p_seismicfortificationintensity = table.Column<string>(nullable: true),
                    p_windpressureame = table.Column<string>(nullable: true),
                    p_airdefenseundergroundparkingspace = table.Column<string>(nullable: true),
                    p_nonairdefenseundergroundparkingspace = table.Column<string>(nullable: true),
                    p_airdefensemechanicalparkingspace = table.Column<string>(nullable: true),
                    p_Nonairdefensemechanicalparkingspace = table.Column<string>(nullable: true),
                    p_groundgreenarea = table.Column<string>(nullable: true),
                    p_othergreenarea = table.Column<string>(nullable: true),
                    p_constructionareaofgroundgarden = table.Column<string>(nullable: true),
                    p_othergardenconstructionarea = table.Column<string>(nullable: true),
                    p_surfaceroadarea = table.Column<string>(nullable: true),
                    p_otherroadarea = table.Column<string>(nullable: true),
                    p_projectcategory = table.Column<string>(nullable: true),
                    p_valuationbasis = table.Column<string>(nullable: true),
                    p_settlementmethod = table.Column<string>(nullable: true),
                    p_taxtype = table.Column<string>(nullable: true),
                    p_ismeasuresfee = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_projects", x => x.p_ID);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "buildingSheets");

            migrationBuilder.DropTable(
                name: "costSummaries");

            migrationBuilder.DropTable(
                name: "highClasses");

            migrationBuilder.DropTable(
                name: "projects");
        }
    }
}
