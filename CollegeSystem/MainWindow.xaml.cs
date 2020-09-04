using System;
using System.Linq;
using System.Windows;
using System.Net.Mail;
using System.Text;

namespace CollegeSystem

{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public CollegeDbC context = new CollegeDbC();
        public string femail;
        private string fpassword;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnSignin_Click(object sender, RoutedEventArgs e)
        {
          
            var query =( from c in context.USERS
                        where c.username == txtUserName.Text && c.password == txtPassword.Password.ToString()
                        select c).FirstOrDefault();
            
            if(query!=null)
            {
                LoggedIn.username = txtUserName.Text;
                new AdministratorWindow().Show();
                this.Close();
            }
            else
            {
                lblForgot.Content = "Wrong Credentials";
            }

            
        }

        private void btnForgot_Click(object sender, RoutedEventArgs e)
        {
            if(txtUserName.Equals(null))
            {
                lblForgot.Content = "please enter username first ";
            }
            else
            {
                var query = (from c in context.USERS
                             where c.username == txtUserName.Text
                             select new { c.email ,c.password }).Single();
                femail = query.email;
                fpassword = query.password;
                Console.WriteLine(femail);
                if (query != null)
                {
                    
                        try
                    {
                        System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
                        client.Port = 587;
                        client.Host = "smtp.gmail.com";
                        client.EnableSsl = true;
                        client.Timeout = 10000;
                        client.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                        client.UseDefaultCredentials = false;
                        client.Credentials = new System.Net.NetworkCredential("kashismails@gmail.com", "143181185");
                        System.Net.Mail.MailMessage mm = new System.Net.Mail.MailMessage("Collegesystem@cms.com", femail, "Password Recovery", "your password is "+ fpassword);
                        mm.BodyEncoding = UTF8Encoding.UTF8;
                        mm.DeliveryNotificationOptions = System.Net.Mail.DeliveryNotificationOptions.OnFailure;
                        client.Send(mm);

                        lblForgot.Content = "Password sent!";
                    }
                    catch (System.Net.Mail.SmtpException w)
                    {
                        lblForgot.Content = "Sorry Some Error occured !";
                        Console.WriteLine(w.ToString());
                    }

                    
                }
                else
                {
                    lblForgot.Content = "Wrong Credentials";
                }


              
            }
          
        }
    }
}
