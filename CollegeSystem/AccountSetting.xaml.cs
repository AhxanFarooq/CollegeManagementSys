using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CollegeSystem
{
    /// <summary>
    /// Interaction logic for AccountSetting.xaml
    /// </summary>
    public partial class AccountSetting : UserControl
    {
        CollegeDbC context = new CollegeDbC();
        public AccountSetting()
        {
            InitializeComponent( );
            Initialize();
        }

        private void Initialize()
        {
            var vs = context.USERS.Single(x => x.username == LoggedIn.username);
            lblFName.Content = vs.fname;
            lblLName.Content = vs.lname;
            lblReligion.Content = vs.email;
            lblUser.Content = vs.username;


        }

        private void btnAccSave_Click(object sender, RoutedEventArgs e)
        {
            try { 
            var vs = context.USERS.First(x => x.username == LoggedIn.username);
            vs.fname = txtAccFName.Text;
            vs.lname = txtAccLName.Text;
            vs.password = txtAccPassword.Password.ToString();
            vs.email = txtAccEmail.Text;
            vs.username = txtAccUser.Text;

            context.SaveChanges();
            }
            catch (Exception ex)
            {
                lblaccsetting.Content = "Please fill the field correctly";
            }

        }
    }
}
