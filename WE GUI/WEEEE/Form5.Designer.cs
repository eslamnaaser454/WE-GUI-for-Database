namespace WEEEE
{
    partial class Form5
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form5));
            this.exit = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.button5 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.userControl21 = new WEEEE.UserControl2();
            this.userControl31 = new WEEEE.UserControl3();
            this.userControl11 = new WEEEE.UserControl1();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // exit
            // 
            this.exit.AutoSize = true;
            this.exit.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(38)))), ((int)(((byte)(28)))), ((int)(((byte)(66)))));
            this.exit.Cursor = System.Windows.Forms.Cursors.Hand;
            this.exit.Font = new System.Drawing.Font("Microsoft Sans Serif", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.exit.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.exit.Location = new System.Drawing.Point(1318, 6);
            this.exit.Name = "exit";
            this.exit.Size = new System.Drawing.Size(31, 33);
            this.exit.TabIndex = 29;
            this.exit.Text = "x";
            this.exit.Click += new System.EventHandler(this.exit_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(56)))), ((int)(((byte)(33)))), ((int)(((byte)(88)))));
            this.label1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label1.Location = new System.Drawing.Point(9, 6);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(33, 33);
            this.label1.TabIndex = 28;
            this.label1.Text = "<";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(56)))), ((int)(((byte)(33)))), ((int)(((byte)(88)))));
            this.label2.Cursor = System.Windows.Forms.Cursors.Hand;
            this.label2.Font = new System.Drawing.Font("Cooper Black", 27.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(239)))), ((int)(((byte)(107)))), ((int)(((byte)(72)))));
            this.label2.Location = new System.Drawing.Point(18, 340);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(350, 42);
            this.label2.TabIndex = 27;
            this.label2.Text = "Customer Service";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // button5
            // 
            this.button5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(56)))), ((int)(((byte)(33)))), ((int)(((byte)(88)))));
            this.button5.Cursor = System.Windows.Forms.Cursors.Hand;
            this.button5.Font = new System.Drawing.Font("Cooper Black", 18F);
            this.button5.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.button5.Location = new System.Drawing.Point(25, 647);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(330, 63);
            this.button5.TabIndex = 23;
            this.button5.Text = "New Service";
            this.button5.UseVisualStyleBackColor = false;
            this.button5.Click += new System.EventHandler(this.button5_Click);
            this.button5.MouseEnter += new System.EventHandler(this.button5_MouseEnter);
            this.button5.MouseLeave += new System.EventHandler(this.button5_MouseLeave);
            // 
            // button4
            // 
            this.button4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(56)))), ((int)(((byte)(33)))), ((int)(((byte)(88)))));
            this.button4.Cursor = System.Windows.Forms.Cursors.Hand;
            this.button4.Font = new System.Drawing.Font("Cooper Black", 18F);
            this.button4.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.button4.Location = new System.Drawing.Point(25, 540);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(330, 63);
            this.button4.TabIndex = 24;
            this.button4.Text = "Customer Cancellation";
            this.button4.UseVisualStyleBackColor = false;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            this.button4.MouseEnter += new System.EventHandler(this.button4_MouseEnter);
            this.button4.MouseLeave += new System.EventHandler(this.button4_MouseLeave);
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(56)))), ((int)(((byte)(33)))), ((int)(((byte)(88)))));
            this.button1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.button1.Font = new System.Drawing.Font("Cooper Black", 18F);
            this.button1.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.button1.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button1.Location = new System.Drawing.Point(25, 429);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(330, 63);
            this.button1.TabIndex = 26;
            this.button1.Text = "Current Customer";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            this.button1.MouseEnter += new System.EventHandler(this.button1_MouseEnter);
            this.button1.MouseLeave += new System.EventHandler(this.button1_MouseLeave);
            // 
            // pictureBox2
            // 
            this.pictureBox2.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox2.Image")));
            this.pictureBox2.Location = new System.Drawing.Point(-2, -4);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(385, 770);
            this.pictureBox2.TabIndex = 22;
            this.pictureBox2.TabStop = false;
            this.pictureBox2.Click += new System.EventHandler(this.pictureBox2_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(-2, -4);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(1368, 770);
            this.pictureBox1.TabIndex = 21;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // userControl21
            // 
            this.userControl21.Location = new System.Drawing.Point(389, 48);
            this.userControl21.Name = "userControl21";
            this.userControl21.Size = new System.Drawing.Size(951, 702);
            this.userControl21.TabIndex = 32;
            // 
            // userControl31
            // 
            this.userControl31.Location = new System.Drawing.Point(389, 192);
            this.userControl31.Name = "userControl31";
            this.userControl31.Size = new System.Drawing.Size(951, 425);
            this.userControl31.TabIndex = 31;
            // 
            // userControl11
            // 
            this.userControl11.Location = new System.Drawing.Point(389, 192);
            this.userControl11.Name = "userControl11";
            this.userControl11.Size = new System.Drawing.Size(951, 427);
            this.userControl11.TabIndex = 30;
            // 
            // Form5
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1364, 762);
            this.Controls.Add(this.userControl21);
            this.Controls.Add(this.userControl31);
            this.Controls.Add(this.userControl11);
            this.Controls.Add(this.exit);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.pictureBox2);
            this.Controls.Add(this.pictureBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Form5";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form5";
            this.Load += new System.EventHandler(this.Form5_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label exit;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.PictureBox pictureBox2;
        private System.Windows.Forms.PictureBox pictureBox1;
        private UserControl1 userControl11;
        private UserControl3 userControl31;
        private UserControl2 userControl21;
    }
}