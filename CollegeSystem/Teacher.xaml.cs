using Microsoft.Win32;
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
    /// Interaction logic for Teacher.xaml
    /// </summary>
    public partial class Teacher : UserControl
    {
        string SFile;
        CollegeDbC context = new CollegeDbC();
        public Teacher()
        {
            InitializeComponent();
        }

        private void btnTchImage_Click(object sender, RoutedEventArgs e)
        {

            OpenFileDialog openFileDialog1 = new OpenFileDialog();

            openFileDialog1.ShowDialog();

            openFileDialog1.DefaultExt = ".jpeg";

            SFile = openFileDialog1.FileName;

            Console.WriteLine(SFile);
        }

        private void btnTchReset_Click(object sender, RoutedEventArgs e)
        {

            txtUTchFName.Clear();
            txtUTchLName.Clear();
            txtUTchGender = null;
            txtUTchDob.Clear();
            txtUTchCnic.Clear();
            txtUTchReligion.Clear();
            txtUTchEmail.Clear();
            txtUTchAddress.Clear();
            txtUTchMobile.Clear();




        }

        private void btnTchSave_Click(object sender, RoutedEventArgs e)
        {
            context.TEACHERS.Add(new TEACHER
            {
                fname = txtTchFName.Text,
                lname = txtTchLName.Text,
                gender = txtTchGender.Text,
                date_of_birth = txtTchDob.Text,
                cnic = txtTchCnic.Text,
                religion = txtTchReligion.Text,
                email = txtTchEmail.Text,
                teacher_address = txtTchAddress.Text,
                phone_number = txtTchMobile.Text,
                picture = SFile




            });
            try
            {
                context.SaveChanges();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException dbEx)
            {
                lblTchMsg.Content = "Please Fill the student information correctly";
            }
        }

        private void btnDeleteTeacher_Click(object sender, RoutedEventArgs e)
        {
           
            try
            {
                var record = new TEACHER {  teacher_id= int.Parse(txtDTeacherID.Text) };
                context.TEACHERS.Attach(record);
                context.TEACHERS.Remove(record);
                context.SaveChanges();
            }
            catch (Exception ex)
            {
                lblDTchMsg.Content = "Please fill the field correctly";
            }

        }

        private void btnUTchSearch_Click(object sender, RoutedEventArgs e)
        {

            int id = int.Parse(txtUTeacherID.Text);
            try
            {

                var teacher = context.TEACHERS.First(a => a.teacher_id == id);
            }
            catch (Exception s)
            {
                lblUTchMsg.Content = "Teacher id not found";
            }
        }

        private void btnUTchUpdate_Click(object sender, RoutedEventArgs e)
        {
            try {
                int id = int.Parse(txtUTeacherID.Text);
                var teacher = context.TEACHERS.First(a => a.teacher_id == id);


                teacher.fname = txtUTchFName.Text;
                teacher.lname = txtUTchLName.Text;
                teacher.gender = txtUTchGender.Text;
                teacher.date_of_birth = txtUTchDob.Text;
                teacher.cnic = txtUTchCnic.Text;
                teacher.religion = txtUTchReligion.Text;
                teacher.email = txtUTchEmail.Text;
                teacher.teacher_address = txtUTchAddress.Text;
                teacher.phone_number = txtUTchMobile.Text;

                context.SaveChanges();
            } catch(Exception s)
            {
                lblUTchMsg.Content = "Fill the form correctly";
            }
        }

        private void btnUTchReset_Click(object sender, RoutedEventArgs e)
        {
            txtTchFName.Clear();
            txtTchLName.Clear();
            txtTchGender = null;
            txtTchDob.Clear();
            txtTchCnic.Clear();
            txtTchReligion.Clear();
            txtTchEmail.Clear();
            txtTchAddress.Clear();
            txtTchMobile.Clear();
        }

        private void btnDetailTchSearch_Click(object sender, RoutedEventArgs e)
        {
            int id = int.Parse(txtDetailTchID.Text);
            try
            {

                var teacher = context.TEACHERS.First(a => a.teacher_id == id);

                lblName.Content = teacher.fname + " " + teacher.lname;
                lblGender.Content = teacher.gender;
                lblDob.Content = teacher.date_of_birth;
                lblCnic.Content = teacher.cnic;
                lblReligion.Content = teacher.religion;
                lblEmail.Content = teacher.email;
                lblAddress.Content = teacher.teacher_address;
                lblPhone.Content = teacher.phone_number;
                imageTeacherDetail.Source = new BitmapImage(new Uri(teacher.picture));


            }
            catch (Exception s)
            {
                lblUTchMsg.Content = "Teacher id not found";
            }
        }

        private void btnAllTeacher_Click(object sender, RoutedEventArgs e)
        {
            AllTeacherDataGrid.ItemsSource = context.TEACHERS.ToList();
        }
    }
}
