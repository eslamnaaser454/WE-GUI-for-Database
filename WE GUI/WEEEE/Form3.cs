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
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }

        private void exit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void label1_Click(object sender, EventArgs e)
        {
            Form f2 = new Form2();
            f2.Show();
            Visible = false;
        }

        private void button3_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click_1(object sender, EventArgs e)
        {
            Form f2 = new Form2();
            f2.Show();
            Visible = false;
        }

        private void label1_Click_2(object sender, EventArgs e)
        {
            Form f2 = new Form2();
            f2.Show();
            Visible = false;
        }

        private void button1_MouseEnter(object sender, EventArgs e)
        {
            button1.BackColor = Color.FromArgb(127, 72, 151);
        }

        private void button1_MouseLeave(object sender, EventArgs e)
        {
            button1.BackColor = Color.FromArgb(56, 33, 88);
        }

        private void button2_MouseEnter(object sender, EventArgs e)
        {
            button2.BackColor = Color.FromArgb(127, 72, 151);
        }

        private void button2_MouseLeave(object sender, EventArgs e)
        {
            button2.BackColor = Color.FromArgb(56, 33, 88);
        }

        private void button4_Click(object sender, EventArgs e)
        {

        }

        private void button4_MouseMove(object sender, MouseEventArgs e)
        {

        }

        private void button4_MouseLeave(object sender, EventArgs e)
        {
            
        }

        private void button4_MouseEnter(object sender, EventArgs e)
        {
            
        }

        private void button5_MouseEnter(object sender, EventArgs e)
        {
            button5.BackColor = Color.FromArgb(127, 72, 151);
        }
        private void button5_MouseLeave(object sender, EventArgs e)
        {
            button5.BackColor = Color.FromArgb(56, 33, 88);
        }

        private void Form3_Load(object sender, EventArgs e)
        {
            userControl71.Hide();
            userControl81.Hide();
            userControl91.Hide();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            userControl81.Hide();
            userControl91.Hide();
            userControl71.Show();
            userControl71.BringToFront();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            userControl91.Hide();
            userControl91.Hide();
            userControl81.Show();
            userControl81.BringToFront();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            userControl81.Hide();
            userControl71.Hide();
            userControl91.Show();
            userControl91.BringToFront();
        }
    }
}
