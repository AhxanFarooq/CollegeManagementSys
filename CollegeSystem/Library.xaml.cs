using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace CollegeSystem
{
    /// <summary>
    /// Interaction logic for Library.xaml
    /// </summary>
    public partial class Library : UserControl
    {
        CollegeDbC context = new CollegeDbC();
        public Library()
        {
            
            InitializeComponent();
            tableAllBooks.ItemsSource = context.BOOKS.ToList();
        }

        private void btnStdSave_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var book = new BOOK
                {
                    title = txtBookName.Text,
                    publisher_name = txtPublisher.Text,
                    author_name = txtWriter.Text,
                    phone_number = txtPhone.Text,
                    book_copies = int.Parse(txtNoOfCopies.Text),
                    p_address = txtPubAddress.Text,
                    ss_id = txtIdNo.Text

                };

                context.BOOKS.Add(book);
                context.SaveChanges();
            }
            catch(Exception ss)
            {
                lblAddMsg.Content = "please recheck the form";
            }
        }

        private void btnStdReset_Click(object sender, RoutedEventArgs e)
        {
            
            txtBookName.Clear();
            txtPublisher.Clear();
            txtWriter.Clear();
            txtPhone.Clear();
            txtNoOfCopies.Clear();
            txtPubAddress.Clear();
            txtIdNo.Clear();
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            context.BOOKS.Remove(context.BOOKS.Single(a => a.ss_id == txtDltBookId.Text));
            context.SaveChanges();

        }

        private void btnIssueBook_Click(object sender, RoutedEventArgs e)
        {
            int id = int.Parse(txtIssueStdId.Text);
            try {
                if (context.BOOKS.Any(o => o.ss_id == txtIssueBookId.Text) && context.STUDENTS.Any(o => o.std_id == id))
                {
                    var issue = new BOOK_ISSUES
                    {
                        book_id = txtIssueBookId.Text,
                        issue_date = DateTime.Today.ToString("dd-MM-yyyy"),
                        std_id = int.Parse(txtIssueStdId.Text)


                    };
                    context.BOOK_ISSUES.Add(issue);
                    context.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                lblIssueMsg.Content = "Your Book is issued";
            }
        }

        private void btnReturnBook_Click(object sender, RoutedEventArgs e)
        {
            int id = int.Parse(txtRtnIssueId.Text);
            try
            {
                if (context.BOOK_ISSUES.Any(o => o.book_issue_id == id))
                {
                    var issue = new BOOK_RETURN
                    {
                        issue_id = int.Parse(txtRtnIssueId.Text),
                        issue_date = DateTime.Today.ToString("dd-MM-yyyy"),


                    };
                    context.BOOK_RETURN.Add(issue);

                    context.SaveChanges();
                    try
                    {
                        var record = new BOOK_ISSUES { book_issue_id = id };
                        context.BOOK_ISSUES.Attach(record);
                        context.BOOK_ISSUES.Remove(record);
                        context.SaveChanges();
                    }
                    catch (Exception ex)
                    {
                        throw new Exception(ex.InnerException.Message);
                    }
                }
            }
            catch (Exception ex)
            {
                lblRtnMsg.Content = "Please fill the field correctly";
            }
        }
    }
}
