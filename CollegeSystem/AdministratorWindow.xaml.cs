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
using System.Windows.Shapes;

namespace CollegeSystem
{
    /// <summary>
    /// Interaction logic for AdministratorWindow.xaml
    /// </summary>
    public partial class AdministratorWindow : Window
    {
        public AdministratorWindow()
        {
            InitializeComponent();
            DataContext = new DashBoard();
        }

        private void btnDashBoard_Click(object sender, RoutedEventArgs e)
        {
            DataContext = new DashBoard();
        }

        private void btnMessage_Click(object sender, RoutedEventArgs e)
        {
            DataContext = new Message();
        }

        private void btnStudent_Click(object sender, RoutedEventArgs e)
        {
            DataContext = new Students();
        }

        private void btnTeacher_Click(object sender, RoutedEventArgs e)
        {
            DataContext = new Teacher();
        }

        private void btnLibrary_Click(object sender, RoutedEventArgs e)
        {
            DataContext = new Library();
        }

        private void btnAccount_Click(object sender, RoutedEventArgs e)
        {
            DataContext = new Account();
        }

        private void btnClass_Click(object sender, RoutedEventArgs e)
        {
            DataContext = new Class();
        }

        private void btnClassRoutine_Click(object sender, RoutedEventArgs e)
        {
            DataContext = new ClassRoutine();
        }

        

        private void btnHostel_Click(object sender, RoutedEventArgs e)
        {
            DataContext = new Hostel();
        }

        private void btnNotice_Click(object sender, RoutedEventArgs e)
        {
            DataContext = new Notice();
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                DragMove();
            }
        }
        private void btnAccountSetting_Click_1(object sender, RoutedEventArgs e)
        {
            DataContext = new AccountSetting();
        }

        private void btnAttendance_Click(object sender, RoutedEventArgs e)
        {
            DataContext = new Attendance();
        }

        private void btnlogout_Click(object sender, RoutedEventArgs e)
        {
            new MainWindow().Show();
            this.Close();
        }
    }


    
}
