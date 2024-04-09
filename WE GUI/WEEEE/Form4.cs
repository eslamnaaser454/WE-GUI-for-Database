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
    public partial class Form4 : Form
    {
        public Form4()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {
            Form f2 = new Form2();
            f2.Show();
            Visible = false;
        }

        private void exit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button1_MouseEnter(object sender, EventArgs e)
        {
            button1.BackColor = Color.FromArgb(127, 72, 151);
        }

        private void button1_MouseLeave(object sender, EventArgs e)
        {
            button1.BackColor = Color.FromArgb(56, 33, 88);
        }

        

        private void button4_MouseEnter(object sender, EventArgs e)
        {
            button4.BackColor = Color.FromArgb(127, 72, 151);
        }

        private void button4_MouseLeave(object sender, EventArgs e)
        {
            button4.BackColor = Color.FromArgb(56, 33, 88);
        }

        private void button5_MouseEnter(object sender, EventArgs e)
        {
            button5.BackColor = Color.FromArgb(127, 72, 151);
        }
        private void button5_MouseLeave(object sender, EventArgs e)
        {
            button5.BackColor = Color.FromArgb(56, 33, 88);
        }

      

        private void button1_Click(object sender, EventArgs e)
        {
            userControl61.Hide();
            userControl51.Hide();
            userControl41.Show();
            userControl41.BringToFront();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            userControl61.Hide();
            userControl41.Hide();
            userControl51.Show();
            userControl51.BringToFront();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            userControl51.Hide();
            userControl41.Hide();
            userControl61.Show();
            userControl61.BringToFront();
        }

        private void Form4_Load(object sender, EventArgs e)
        {
            userControl51.Hide();
            userControl41.Hide();
            userControl61.Hide();
        }
    }
}
