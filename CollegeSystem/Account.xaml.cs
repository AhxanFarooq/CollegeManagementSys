using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace CollegeSystem
{
    /// <summary>
    /// Interaction logic for Account.xaml
    /// </summary>
    public partial class Account : UserControl
    {
        CollegeDbC context = new CollegeDbC();
        public Account()
        {
            InitializeComponent();
            string month = DateTime.Now.ToString("MM");
            Console.WriteLine(month);
            tableAllExpenses.ItemsSource = context.EXPENSES.Where(x => x.exp_date.Contains(month)).ToList();
            tableFeeCollection.ItemsSource =  context.PAYMENTS.Where(x => x.payment_date.Contains(month) && x.status=="P").Select(n=> new { n.pay_name, n.pay_id, n.status, n.STUDENT.fname, n.STUDENT.lname }).ToList();
        }

        private void btnPayReset_Click(object sender, RoutedEventArgs e)
        {
            txtPayClass.Clear();
            txtPayId.Clear();
            txtPayName.Clear();
            txtPaySection.Clear();
            txtPayStatus = null;
            txtPayTotalFee.Clear();

        }

        private void btnExpSave_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var expense = new EXPENS
                {
                    exp_amount =int.Parse( txtExpAmount.Text),
                    exp_email = txtExpEmail.Text,
                    exp_name = txtExpName.Text,
                    exp_date = DateTime.Today.ToString("dd/MM/yyyy"),
                    exp_phone=txtExpPhone.Text,
                    exp_status=txtExpStatus.Text,
                    exp_type=txtExpType.Text,

                };

                context.EXPENSES.Add(expense);
                context.SaveChanges();
            }
            catch (Exception ex)
            {
                lblExpMsg.Content = "Please fill the field correctly";
            }
        }

        private void btnExpReset_Click(object sender, RoutedEventArgs e)
        {
            txtExpType.Clear();
            txtExpStatus.Clear();
            txtExpPhone.Clear();
            txtExpName.Clear();
            txtExpEmail.Clear();
            txtExpType.Clear();
            txtExpAmount.Clear();
        }

        private void btnPaySave_Click(object sender, RoutedEventArgs e)
        {

            try
            {
                var payment = new PAYMENT
                {
                    pay_name = txtPayName.Text,
                    pay_amount = double.Parse(txtPayTotalFee.Text),
                    payment_date = DateTime.Today.ToString("dd/MM/yyyy"),
                    status = txtPayStatus.Text,
                    std_id = int.Parse(txtPayId.Text)
                };

                context.PAYMENTS.Add(payment);
                context.SaveChanges();
            }
            catch
            {
                lblPayMsg.Content = "please fill the form correctly";

            }
           
           
        }
    }
}
