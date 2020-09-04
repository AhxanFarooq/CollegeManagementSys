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
    /// Interaction logic for Class.xaml
    /// </summary>
    public partial class Class : UserControl
    {
        CollegeDbC context = new CollegeDbC();
        public Class()
        {
            InitializeComponent();
            tableAllClasses.ItemsSource = context.CLASSES.ToList();
        }

        private void btnClsSave_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var classs = new CLASS
                {
                    class_name = txtClsClass.Text,
                    numeric_name = txtClsNumName.Text,
                    teacher_name = txtClsTeacherName.Text,
                    gender = txtClsGender.Text,
                    t_subject = txtClsSubject.Text
                };
                context.CLASSES.Add(classs);
                context.SaveChanges();
            }
            catch(Exception ex)
            {
                lblClsMsg.Content = "Please fill all field correctly";
            }
        }

        private void btnClsReset_Click(object sender, RoutedEventArgs e)
        {
            txtClsSubject.Clear();
            txtClsClass.Clear();
            txtClsNumName.Clear();
            txtClsTeacherName.Clear();
            txtClsGender = null;
        }
    }
}
