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
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        private void button1_MouseHover(object sender, EventArgs e)
        {

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

        private void button3_MouseEnter(object sender, EventArgs e)
        {
            button3.BackColor = Color.FromArgb(127, 72, 151);
        }

        private void button3_MouseLeave(object sender, EventArgs e)
        {
            button3.BackColor = Color.FromArgb(56, 33, 88);
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            
        }

        private void exit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void exit_Click_1(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button2_Click_1(object sender, EventArgs e)
        {

        }

        private void button2_MouseEnter_1(object sender, EventArgs e)
        {
            button2.BackColor = Color.FromArgb(127, 72, 151);
        }

        private void button2_MouseLeave_1(object sender, EventArgs e)
        {
            button2.BackColor = Color.FromArgb(56, 33, 88);
        }

        private void button1_MouseEnter_1(object sender, EventArgs e)
        {
            button1.BackColor = Color.FromArgb(127, 72, 151);
        }

        private void button1_MouseLeave_1(object sender, EventArgs e)
        {
            button1.BackColor = Color.FromArgb(56, 33, 88);
        }

        private void button3_MouseEnter_1(object sender, EventArgs e)
        {
            button3.BackColor = Color.FromArgb(127, 72, 151);
        }

        private void button3_MouseLeave_1(object sender, EventArgs e)
        {
            button3.BackColor = Color.FromArgb(56, 33, 88);
        }

        private void label1_Click_1(object sender, EventArgs e)
        {

        }

        private void customerOPTION_Click(object sender, EventArgs e)
        {
            Form f5 = new Form5();
            f5.Show();
            Visible = false;
        }

        private void label1_MouseEnter(object sender, EventArgs e)
        {
            button2.BackColor = Color.FromArgb(127, 72, 151);
        }

        private void label1_MouseLeave(object sender, EventArgs e)
        {
            button2.BackColor = Color.FromArgb(56, 33, 88);
        }

        private void customerOPTION_MouseEnter(object sender, EventArgs e)
        {
            button2.BackColor = Color.FromArgb(127, 72, 151);
        }

        private void customerOPTION_MouseLeave(object sender, EventArgs e)
        {
            button2.BackColor = Color.FromArgb(56, 33, 88);
        }

        private void label2_MouseEnter(object sender, EventArgs e)
        {
            button1.BackColor = Color.FromArgb(127, 72, 151);
        }

        private void label2_MouseLeave(object sender, EventArgs e)
        {
            button1.BackColor = Color.FromArgb(56, 33, 88);
        }

        private void button4_MouseEnter(object sender, EventArgs e)
        {
            button1.BackColor = Color.FromArgb(127, 72, 151);
        }

        private void button4_MouseLeave(object sender, EventArgs e)
        {
            button1.BackColor = Color.FromArgb(56, 33, 88);
        }

        private void button5_MouseEnter(object sender, EventArgs e)
        {
            button3.BackColor = Color.FromArgb(127, 72, 151);
        }

        private void button5_MouseLeave(object sender, EventArgs e)
        {
            button3.BackColor = Color.FromArgb(56, 33, 88);
        }

        private void label1_Click_2(object sender, EventArgs e)
        {
            Form f1 = new Form1();
            f1.Show();
            Visible = false;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Form f3 = new Form3();
            f3.Show();
            Visible = false;
        }

        private void button5_Click(object sender, EventArgs e)
        {
            Form f4 = new Form4();
            f4.Show();
            Visible = false;
        }
    }
}
