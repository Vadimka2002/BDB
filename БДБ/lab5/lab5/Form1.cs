using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;


namespace Пример__1_для_БИ_3_2024
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

            get_type();
        }

        void get_type()
        {
            String connectionString = "server=127.0.0.1; port=3305; " +
                        "database=ychet; userid=Vadim; password=Vd17012002; ";
            String sqlQuery = "SELECT * FROM `people`;";
            MySqlDataAdapter mySqlDataAdapter =
                new MySqlDataAdapter(sqlQuery, connectionString);
            DataTable dataTable = new DataTable();
            mySqlDataAdapter.Fill(dataTable);
            //comboBox1.DataSource = dataTable;
            // comboBox1.DisplayMember = "FIO";
            // comboBox1.ValueMember = "id people";
        }


        private void button1_Click(object sender, EventArgs e)
        {
            String connectionString = "server=127.0.0.1; port=3305; " +
                "database=ychet; userid=Vadim; password=Vd17012002; " +
                "sslmode=none;";
            MySqlConnection mySqlConnection =
                new MySqlConnection(connectionString);
            mySqlConnection.Open();
            String sqlQuery = "SELECT * FROM `people`;";
            MySqlDataAdapter mySqlDataAdapter =
                new MySqlDataAdapter(sqlQuery, mySqlConnection);
            DataTable dataTable = new DataTable();
            mySqlDataAdapter.Fill(dataTable);
            dataGridView1.DataSource = dataTable;
            mySqlConnection.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            get_data();
        }

        void get_data()
        {
            String connectionString = "server=127.0.0.1; port=3305; " +
                    "database=ychet; userid=Vadim; password=Vd17012002; " +
                    "sslmode=none;";
            String sqlQuery = "SELECT * FROM `people`;";
            MySqlDataAdapter mySqlDataAdapter =
                new MySqlDataAdapter(sqlQuery, connectionString);
            DataTable dataTable = new DataTable();
            mySqlDataAdapter.Fill(dataTable);
            dataGridView1.DataSource = dataTable;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            String connectionString = "server=127.0.0.1; port=3305; " +
                "database=ychet; userid=Vadim; password=Vd17012002; " ;
            MySqlConnection mySqlConnection =
                new MySqlConnection(connectionString);
            mySqlConnection.Open();
            String sqlQuery = "INSERT INTO `people` " +
                " (`id people`, `FIO`, `Year`,`phone`," +
                " `Home`) " +
                " VALUES " +
                $"( '{textBox1.Text}', " + 
                $" '{textBox2.Text}', " +
                $"'{textBox3.Text}', " + 
                $"'{textBox5.Text}', " +
            //$" '{comboBox1.SelectedValue}'," +
            //$" '{numericUpDown1.Value.ToString().Replace(",", ".")}', " +
            //$"'{numericUpDown2.Value}', " +
            //$" {checkBox1.Checked}, " +
            $" '{dateTimePicker1.Value.ToString("yyyy.MM.dd")}');";
            MySqlCommand mySqlCommand =
                new MySqlCommand(sqlQuery, mySqlConnection);
            try
            {
                mySqlCommand.ExecuteNonQuery();
                MessageBox.Show("Успех!");
                get_data();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            mySqlConnection.Close();
        }

        private void textBox7_TextChanged(object sender, EventArgs e)
        {
            String connectionString = "server=127.0.0.1; port=3305; " +
                    "database=ychet; userid=Vadim; password=Vd17012002; " ;
            String sqlQuery = "SELECT * FROM `people`" +
                $"WHERE `FIO` LIKE '%{textBox7.Text}%' OR" +
                $" `Home` LIKE '%{textBox7.Text}%' ;";
            MySqlDataAdapter mySqlDataAdapter =
                new MySqlDataAdapter(sqlQuery, connectionString);
            DataTable dataTable = new DataTable();
            mySqlDataAdapter.Fill(dataTable);
            dataGridView1.DataSource = dataTable;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            String connectionString = "server=127.0.0.1; port=3305; " +
                "database=ychet; userid=Vadim; password=Vd17012002; " ;
            MySqlConnection mySqlConnection =
                new MySqlConnection(connectionString);
            mySqlConnection.Open();
            foreach (DataGridViewRow tmp in dataGridView1.SelectedRows)
            {
                String sqlQuery = "DELETE FROM `people` " +
                   $" WHERE `FIO`= " +
                   $" '{tmp.Cells["FIO"].Value}' ;";
                MySqlCommand mySqlCommand =
                    new MySqlCommand(sqlQuery, mySqlConnection);
                try
                {
                    mySqlCommand.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            MessageBox.Show("Успех!");
            get_data();
            mySqlConnection.Close();
        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {
            if (dataGridView1.RowCount == 0) return;
            if (dataGridView1.SelectedRows.Count == 0) return;
            textBox2.Text =
                dataGridView1.SelectedRows[0].Cells["FIO"].Value.ToString();
            textBox3.Text =
                dataGridView1.SelectedRows[0].Cells["phone"].Value.ToString();
            textBox5.Text =
                dataGridView1.SelectedRows[0].Cells["Home"].Value.ToString();
            textBox1.Text =
                dataGridView1.SelectedRows[0].Cells["id people"].Value.ToString();
            //comboBox1.SelectedValue =
            //   dataGridView1.SelectedRows[0].Cells["id people"].Value;
            //numericUpDown1.Value =
            //    Convert.ToDecimal(dataGridView1.SelectedRows[0].Cells["Цена"].Value);
            //numericUpDown2.Value =
            //    Convert.ToDecimal(dataGridView1.SelectedRows[0].Cells["НаСкладе"].Value);
            // checkBox1.Checked=
            //    Convert.ToBoolean(dataGridView1.SelectedRows[0].Cells["Year"].Value);
            if (dataGridView1.SelectedRows[0].Cells["Year"].Value != DBNull.Value)
                dateTimePicker1.Value =
                    Convert.ToDateTime(dataGridView1.SelectedRows[0].Cells["Year"].Value);
            else
                dateTimePicker1.Text = "";
        }

    }
}

