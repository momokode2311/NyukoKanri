﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using 携帯会社販売管理システム.Model;


namespace 携帯会社販売管理システム
{
    public partial class FormLogin : BaseForm
    {
        
        public FormLogin()
        {
            InitializeComponent(); 
        }
        private void FormLogin_Load(object sender, EventArgs e)
        {
            //Cai dat ClientId FormID
            FormID = ClientId.Form_001;
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {

                this.DoLogin();
                
            }
            catch (Exception ex)
            {
                DisplayMessage(MessageKind.ErrorBox, MessageManager.E000);
                throw ex;

            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            // 画面でメッセージを表示する
            var rs = DisplayMessage(MessageKind.WarningBox, MessageManager.W001);
            if (rs == DialogResult.OK)
            {
                this.Dispose();

                Environment.Exit(0);
            
            }            
        }

        private void FormLogin_FormClosing(object sender, FormClosingEventArgs e)
        {

            Environment.Exit(0);
        }

        private void txtPassword_KeyDown(object sender, KeyEventArgs e)
        {
            //Bat Su kien an phim Enter sau khi nhap Password
            if (e.KeyCode == Keys.Return)
            {
                this.DoLogin();
            }
        }

        private void DoLogin()
        {
            try
            {
                var loginAccess = new LoginDataAccess();
                var dt = loginAccess.Login(txtUserID.Text, txtPassword.Text);

                if (dt.Rows.Count > 0)
                {
                    Menu menu = new Menu();
                    UserID = dt.Rows[0]["EmID"].ToString();
                    UserName = dt.Rows[0]["EmName"].ToString();
                    CallForm(this, menu, ClientId.Form_002, ClientId.Form_001);
                }
                else
                {
                    DisplayMessage(MessageKind.ErrorBox, MessageManager.E001);
                    txtUserID.Focus();
                }
            }
            catch (Exception ex)
            {
                throw ex;
                throw;
            }
        }
    }
}
