using Infragistics.Documents.Excel;
using System;
using System.Collections.Generic;
using System.IO;
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
    /// Interaction logic for Attendance.xaml
    /// </summary>
    public partial class Attendance : UserControl
    {
        string file = " ";
        public Attendance()
        {
            InitializeComponent();
        }

        private void btnPaySave_Click(object sender, RoutedEventArgs e)
        {
           
            file = System.IO.Path.Combine(cmbClass.Text + "-" + cmbSection.Text+".xls");
            using (var stream = File.Open(file, FileMode.Open))
            {
                AttendanceSheet.Workbook = Workbook.Load(stream);
            }
        }

        private void btnPayReset_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                AttendanceSheet.Workbook.Save(file);
            }
            catch(Exception ss)
            {
                Console.WriteLine("  ");
            }
        }
    }
}
