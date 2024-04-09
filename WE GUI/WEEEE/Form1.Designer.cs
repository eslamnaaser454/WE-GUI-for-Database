namespace WEEEE
{
    partial class Form1
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.password = new System.Windows.Forms.TextBox();
            this.jobNUMBER = new System.Windows.Forms.TextBox();
            this.exit = new System.Windows.Forms.Label();
            this.submit = new System.Windows.Forms.Label();
            this.welcomePAGE = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.welcomePAGE)).BeginInit();
            this.SuspendLayout();
            // 
            // password
            // 
            this.password.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(145)))), ((int)(((byte)(133)))), ((int)(((byte)(162)))));
            this.password.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.password.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.password.Location = new System.Drawing.Point(534, 485);
            this.password.Name = "password";
            this.password.Size = new System.Drawing.Size(342, 22);
            this.password.TabIndex = 1;
            this.password.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            this.password.MouseEnter += new System.EventHandler(this.password_MouseEnter);
            this.password.MouseLeave += new System.EventHandler(this.password_MouseLeave);
            // 
            // jobNUMBER
            // 
            this.jobNUMBER.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(145)))), ((int)(((byte)(133)))), ((int)(((byte)(162)))));
            this.jobNUMBER.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.jobNUMBER.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.jobNUMBER.Location = new System.Drawing.Point(534, 374);
            this.jobNUMBER.Name = "jobNUMBER";
            this.jobNUMBER.Size = new System.Drawing.Size(342, 22);
            this.jobNUMBER.TabIndex = 1;
            this.jobNUMBER.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            this.jobNUMBER.MouseEnter += new System.EventHandler(this.jobNUMBER_MouseEnter);
            this.jobNUMBER.MouseLeave += new System.EventHandler(this.jobNUMBER_MouseLeave);
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
            this.exit.TabIndex = 2;
            this.exit.Text = "x";
            this.exit.Click += new System.EventHandler(this.exit_Click);
            // 
            // submit
            // 
            this.submit.AutoSize = true;
            this.submit.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(239)))), ((int)(((byte)(107)))), ((int)(((byte)(72)))));
            this.submit.Cursor = System.Windows.Forms.Cursors.Hand;
            this.submit.Font = new System.Drawing.Font("Microsoft Sans Serif", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.submit.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.submit.Location = new System.Drawing.Point(618, 588);
            this.submit.Name = "submit";
            this.submit.Size = new System.Drawing.Size(130, 33);
            this.submit.TabIndex = 3;
            this.submit.Text = "SUBMIT";
            this.submit.Click += new System.EventHandler(this.submit_Click);
            // 
            // welcomePAGE
            // 
            this.welcomePAGE.Image = ((System.Drawing.Image)(resources.GetObject("welcomePAGE.Image")));
            this.welcomePAGE.Location = new System.Drawing.Point(0, -1);
            this.welcomePAGE.Name = "welcomePAGE";
            this.welcomePAGE.Size = new System.Drawing.Size(1366, 770);
            this.welcomePAGE.TabIndex = 0;
            this.welcomePAGE.TabStop = false;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1364, 767);
            this.Controls.Add(this.submit);
            this.Controls.Add(this.exit);
            this.Controls.Add(this.jobNUMBER);
            this.Controls.Add(this.password);
            this.Controls.Add(this.welcomePAGE);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.welcomePAGE)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox welcomePAGE;
        private System.Windows.Forms.TextBox password;
        private System.Windows.Forms.TextBox jobNUMBER;
        private System.Windows.Forms.Label exit;
        private System.Windows.Forms.Label submit;
    }
}

