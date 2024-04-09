namespace WEEEE
{
    partial class Form2
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form2));
            this.exit = new System.Windows.Forms.Label();
            this.customerOPTION = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.button3 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
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
            this.exit.Location = new System.Drawing.Point(1321, 9);
            this.exit.Name = "exit";
            this.exit.Size = new System.Drawing.Size(31, 33);
            this.exit.TabIndex = 3;
            this.exit.Text = "x";
            this.exit.Click += new System.EventHandler(this.exit_Click_1);
            // 
            // customerOPTION
            // 
            this.customerOPTION.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(239)))), ((int)(((byte)(107)))), ((int)(((byte)(72)))));
            this.customerOPTION.Cursor = System.Windows.Forms.Cursors.Hand;
            this.customerOPTION.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.customerOPTION.Font = new System.Drawing.Font("Cooper Black", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.customerOPTION.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.customerOPTION.Location = new System.Drawing.Point(134, 650);
            this.customerOPTION.Name = "customerOPTION";
            this.customerOPTION.Size = new System.Drawing.Size(245, 54);
            this.customerOPTION.TabIndex = 5;
            this.customerOPTION.Text = "Customer Service";
            this.customerOPTION.UseVisualStyleBackColor = false;
            this.customerOPTION.Click += new System.EventHandler(this.customerOPTION_Click);
            this.customerOPTION.MouseEnter += new System.EventHandler(this.customerOPTION_MouseEnter);
            this.customerOPTION.MouseLeave += new System.EventHandler(this.customerOPTION_MouseLeave);
            // 
            // button4
            // 
            this.button4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(239)))), ((int)(((byte)(107)))), ((int)(((byte)(72)))));
            this.button4.Cursor = System.Windows.Forms.Cursors.Hand;
            this.button4.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button4.Font = new System.Drawing.Font("Cooper Black", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button4.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.button4.Location = new System.Drawing.Point(559, 649);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(245, 55);
            this.button4.TabIndex = 5;
            this.button4.Text = "Malfunctions";
            this.button4.UseVisualStyleBackColor = false;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            this.button4.MouseEnter += new System.EventHandler(this.button4_MouseEnter);
            this.button4.MouseLeave += new System.EventHandler(this.button4_MouseLeave);
            // 
            // button5
            // 
            this.button5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(239)))), ((int)(((byte)(107)))), ((int)(((byte)(72)))));
            this.button5.Cursor = System.Windows.Forms.Cursors.Hand;
            this.button5.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button5.Font = new System.Drawing.Font("Cooper Black", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button5.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.button5.Location = new System.Drawing.Point(987, 650);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(245, 54);
            this.button5.TabIndex = 5;
            this.button5.Text = "Employees";
            this.button5.UseVisualStyleBackColor = false;
            this.button5.Click += new System.EventHandler(this.button5_Click);
            this.button5.MouseEnter += new System.EventHandler(this.button5_MouseEnter);
            this.button5.MouseLeave += new System.EventHandler(this.button5_MouseLeave);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(31)))), ((int)(((byte)(25)))), ((int)(((byte)(57)))));
            this.label1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 21.75F, System.Drawing.FontStyle.Bold);
            this.label1.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(33, 33);
            this.label1.TabIndex = 6;
            this.label1.Text = "<";
            this.label1.Click += new System.EventHandler(this.label1_Click_2);
            // 
            // button3
            // 
            this.button3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(56)))), ((int)(((byte)(33)))), ((int)(((byte)(88)))));
            this.button3.Cursor = System.Windows.Forms.Cursors.Hand;
            this.button3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button3.Image = ((System.Drawing.Image)(resources.GetObject("button3.Image")));
            this.button3.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.button3.Location = new System.Drawing.Point(935, 334);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(342, 412);
            this.button3.TabIndex = 4;
            this.button3.UseVisualStyleBackColor = false;
            this.button3.MouseEnter += new System.EventHandler(this.button3_MouseEnter_1);
            this.button3.MouseLeave += new System.EventHandler(this.button3_MouseLeave_1);
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(56)))), ((int)(((byte)(33)))), ((int)(((byte)(88)))));
            this.button1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button1.Image = ((System.Drawing.Image)(resources.GetObject("button1.Image")));
            this.button1.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.button1.Location = new System.Drawing.Point(513, 334);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(338, 412);
            this.button1.TabIndex = 4;
            this.button1.UseVisualStyleBackColor = false;
            this.button1.MouseEnter += new System.EventHandler(this.button1_MouseEnter_1);
            this.button1.MouseLeave += new System.EventHandler(this.button1_MouseLeave_1);
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(56)))), ((int)(((byte)(33)))), ((int)(((byte)(88)))));
            this.button2.Cursor = System.Windows.Forms.Cursors.Hand;
            this.button2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button2.Image = ((System.Drawing.Image)(resources.GetObject("button2.Image")));
            this.button2.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.button2.Location = new System.Drawing.Point(88, 343);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(337, 412);
            this.button2.TabIndex = 4;
            this.button2.UseVisualStyleBackColor = false;
            this.button2.Click += new System.EventHandler(this.button2_Click_1);
            this.button2.MouseEnter += new System.EventHandler(this.button2_MouseEnter_1);
            this.button2.MouseLeave += new System.EventHandler(this.button2_MouseLeave_1);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(-1, -1);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(1367, 770);
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1364, 767);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.customerOPTION);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.exit);
            this.Controls.Add(this.pictureBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Form2";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form2";
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label exit;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button customerOPTION;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Label label1;
    }
}