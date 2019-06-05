using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calificaciones.Form
{
    public partial class Subir_archivos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(upData.FileName);

            upData.SaveAs(Server.MapPath("../Files/") + filename);
            string route = Server.MapPath("../Files/") + filename;

            ShowDataGrid(route);
            ShowPromedio(route);
            ShowMejor(route);
            ShowPeor(route);
        }

        private void ShowPeor(string routeguide)
        {
            string con = ConfigurationManager.ConnectionStrings["Excel07ConString"].ConnectionString;

            con = String.Format(con, routeguide, "Yes");
            OleDbConnection connExcel = new OleDbConnection(con);
            OleDbCommand cmdExcel = new OleDbCommand();
            OleDbDataAdapter oda = new OleDbDataAdapter();
            DataTable dtInformation = new DataTable();
            cmdExcel.Connection = connExcel;

            connExcel.Open();
            DataTable dtExcelSchema;
            dtExcelSchema = connExcel.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
            string SheetName = dtExcelSchema.Rows[0]["TABLE_NAME"].ToString();

            cmdExcel.CommandText = "SELECT * FROM [" + SheetName + "] WHERE Calificacion = (SELECT MIN(Calificacion) FROM [" + SheetName + "] )";

            oda.SelectCommand = cmdExcel;
            oda.Fill(dtInformation);
            connExcel.Close();

            DataRow row = dtInformation.Rows[0];

            lblPeor.InnerText = "El alumno con la calificacion mas baja es " + row["Nombres"].ToString() + " " + row["Apellido Paterno"].ToString() + " " + row["Apellido Materno"].ToString();
        }

        private void ShowMejor(string routeguide)
        {
            string con = ConfigurationManager.ConnectionStrings["Excel07ConString"].ConnectionString;

            con = String.Format(con, routeguide, "Yes");
            OleDbConnection connExcel = new OleDbConnection(con);
            OleDbCommand cmdExcel = new OleDbCommand();
            OleDbDataAdapter oda = new OleDbDataAdapter();
            DataTable dtInformation = new DataTable();
            cmdExcel.Connection = connExcel;

            connExcel.Open();
            DataTable dtExcelSchema;
            dtExcelSchema = connExcel.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
            string SheetName = dtExcelSchema.Rows[0]["TABLE_NAME"].ToString();


            cmdExcel.CommandText = "SELECT * FROM [" + SheetName + "] WHERE Calificacion = (SELECT MAX(Calificacion) FROM [" + SheetName + "] )";

            oda.SelectCommand = cmdExcel;
            oda.Fill(dtInformation);
            connExcel.Close();

            DataRow row = dtInformation.Rows[0];

            lblMejor.InnerText = "El alumno con la mejor calificacion es " + row["Nombres"].ToString() + " " + row["Apellido Paterno"].ToString() + " " + row["Apellido Materno"].ToString();
        }

        private void ShowPromedio(string routeguide)
        {

            string con = ConfigurationManager.ConnectionStrings["Excel07ConString"].ConnectionString;

            con = String.Format(con, routeguide, "Yes");
            OleDbConnection connExcel = new OleDbConnection(con);
            OleDbCommand cmdExcel = new OleDbCommand();
            OleDbDataAdapter oda = new OleDbDataAdapter();
            DataTable dtInformation = new DataTable();
            cmdExcel.Connection = connExcel;

            connExcel.Open();
            DataTable dtExcelSchema;
            dtExcelSchema = connExcel.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
            string SheetName = dtExcelSchema.Rows[0]["TABLE_NAME"].ToString();

            cmdExcel.CommandText = "SELECT AVG(Calificacion) AS Promedio FROM [" + SheetName + "]";

            oda.SelectCommand = cmdExcel;
            oda.Fill(dtInformation);
            connExcel.Close();

            DataRow row = dtInformation.Rows[0];

            lblPromedio.InnerText = "El promedio es " + row["Promedio"].ToString();

        }

        private void ShowDataGrid(string routeguide)
        {

            string con = ConfigurationManager.ConnectionStrings["Excel07ConString"].ConnectionString;

            con = String.Format(con, routeguide, "Yes");
            OleDbConnection connExcel = new OleDbConnection(con);
            OleDbCommand cmdExcel = new OleDbCommand();
            OleDbDataAdapter oda = new OleDbDataAdapter();
            DataTable dtInformation = new DataTable();
            cmdExcel.Connection = connExcel;

            connExcel.Open();
            DataTable dtExcelSchema;
            dtExcelSchema = connExcel.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
            string SheetName = dtExcelSchema.Rows[0]["TABLE_NAME"].ToString();

            cmdExcel.CommandText = "SELECT * FROM [" + SheetName + "] ";

            oda.SelectCommand = cmdExcel;
            oda.Fill(dtInformation);
            connExcel.Close();

            table.AutoGenerateColumns = false;
            table.DataSource = dtInformation;

            table.DataBind();
        }
    }
}
