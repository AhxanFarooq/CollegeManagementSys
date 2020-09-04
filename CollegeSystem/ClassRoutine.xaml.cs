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
    /// Interaction logic for ClassRoutine.xaml
    /// </summary>
    public partial class ClassRoutine : UserControl
    {
        CollegeDbC context = new CollegeDbC();
        public ClassRoutine()
        {
            InitializeComponent();
            tableClassRoutine.ItemsSource = context.CLASS_ROUTINES.ToList();
        }

        private void btnCrtReset_Click(object sender, RoutedEventArgs e)
        {
            txtCrtDay.Clear();
                 txtCrtSubject.Clear();
                txtCrtTime.Clear();
            txtCrtSection = null;
                txtCrtTeacher.Clear();


        }

        private void btnCrtSubmit_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                context.CLASS_ROUTINES.Add(new CLASS_ROUTINES
                {
                    day = txtCrtDay.Text,
                    subject_type = txtCrtSubject.Text,
                    class_time = txtCrtTime.Text,
                    section = txtCrtSection.Text,
                    teacher = txtCrtTeacher.Text,
                    classname=txtCrtClass.Text
                });
                context.SaveChanges();
            }
            catch (Exception ex)
            {
                lblCrtMsg.Content = "Please fill the field correctly";
            }
        }
    }
}
