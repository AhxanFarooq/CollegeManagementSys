using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Net;
using System.Collections.Specialized;
using System.Web;

namespace CollegeSystem
{
    /// <summary>
    /// Interaction logic for Message.xaml
    /// </summary>
    public partial class Message : UserControl
    {
        public Message()
        {
            InitializeComponent();
        }

        private void btnSendMessage_Click(object sender, RoutedEventArgs e)
        {
            String message = HttpUtility.UrlEncode(txtTitle.Text+":\n"+"This Message is From College " + (new TextRange(txtMessage.Document.ContentStart, txtMessage.Document.ContentEnd).Text));
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.txtlocal.com/send/", new NameValueCollection()
                {
                {"apikey" , "geAD9TzlVvM-9J1PsZb1X9zHqfCglb8UDSNhXjnAeD"},
                {"numbers" ,  txtRecipient.Text},
                {"message" , message},
                {"sender" , "College"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
                if(result.Contains("successful"))
                {
                    lblSuccessMessage.Content = "Message sent successful";
                    

                }
                else
                {
                    lblErrorMessage.Content = "Message Not sent";
                }
             }
        }
    }
}
