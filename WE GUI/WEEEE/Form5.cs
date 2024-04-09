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
    public partial class Form5 : Form
    {
        public Form5()
        {
            InitializeComponent();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {
            
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

        private void button1_MouseEnter(object sender, EventArgs e)
        {
            button1.BackColor = Color.FromArgb(127, 72, 151);
        }

        private void button1_MouseLeave(object sender, EventArgs e)
        {
            button1.BackColor = Color.FromArgb(56, 33, 88);
        }

        private void Form5_Load(object sender, EventArgs e)
        {
            userControl11.Hide();
            userControl21.Hide();
            userControl31.Hide();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            userControl11.Hide();
            userControl21.Hide();
            userControl31.Show();
            userControl31.BringToFront();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            userControl31.Hide();
            userControl21.Hide();
            userControl11.Show();
            userControl11.BringToFront();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            userControl11.Hide();
            userControl31.Hide();
            userControl21.Show();
            userControl21.BringToFront();
        }
    }
}
