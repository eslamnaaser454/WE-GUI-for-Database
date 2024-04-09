using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WEEEE
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void exit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void jobNUMBER_MouseEnter(object sender, EventArgs e)
        {
            if (jobNUMBER.Text == "Enter your job number")
            {
                jobNUMBER.Text = "";
                jobNUMBER.ForeColor = Color.Black;
            }
        }

        private void jobNUMBER_MouseLeave(object sender, EventArgs e)
        {
            if (jobNUMBER.Text == "")
            {
                jobNUMBER.Text = "Enter your job number";
                jobNUMBER.ForeColor = Color.White;
            }
        }

        private void password_MouseEnter(object sender, EventArgs e)
        {
            if (password.Text == "Enter your password")
            {
                password.Text = "";
                password.UseSystemPasswordChar = true;
                password.ForeColor = Color.Black;
            }
        }

        private void password_MouseLeave(object sender, EventArgs e)
        {
            if (password.Text == "")
            {
                password.UseSystemPasswordChar = false;
                password.Text = "Enter your password";
                password.ForeColor = Color.White;
            }
        }

        private void submit_Click(object sender, EventArgs e)
        {
            Form f2 = new Form2();
            f2.Show();
            Visible = false;
        }
    }
}
