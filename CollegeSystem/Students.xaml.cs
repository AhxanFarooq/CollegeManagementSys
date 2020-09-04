using Microsoft.Win32;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Linq;
using System.Windows.Media.Imaging;

namespace CollegeSystem
{
    /// <summary>
    /// Interaction logic for Students.xaml
    /// </summary>
    public partial class Students : UserControl
    {
        CollegeDbC context = new CollegeDbC();
        String PFile;
        String SFile;
        public Students()
        {
            InitializeComponent();
           

        }

        private void btnstdsave_click(object sender, RoutedEventArgs e)
        {
            //   if (String.IsNullOrEmpty(txtParentFName.Text) && txtParentFName.Tex
            //)
            try { 
                var p = new PARENT
                {
                  //  parent_id=11,
                    father_name = txtParentFName.Text,
                    mother_name = txtParentMName.Text,
                    father_occupation = txtParentFOccupation.Text,
                    mother_occupation = txtParentMOccupation.Text,
                    phone_number = txtParentNumber.Text,
                    permanent_address = txtParentPermanentAddress.Text,
                    present_address = txtParentPresentAddress.Text,
                    picture = PFile,
                    nationality= txtParentNationality.Text

                };

            
                context.PARENTS.Add(p);

            try
            {
                context.SaveChanges();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException dbEx)
            {
                lblStdMsg.Content = "Please enter the parent information correctly";
            }



            //  Input string was not in a correct format.

            context.STUDENTS.Add(new STUDENT
            {
                fname = txtStdFName.Text,
                lname = txtStdLName.Text,
                std_class = txtStdClass.Text,
                section = txtStdSection.Text,
                gender = txtStdGender.Text,
                date_of_birth = txtStdDob.Text,
                roll = int.Parse(txtStdRoll.Text),
                religion = txtStdReligion.Text,
                picture =SFile,
                p_id=(int) context.PARENTS.Max(u => u.parent_id),
                email=txtStdEmail.Text
               



        });
            try
            {
                context.SaveChanges();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException dbEx)
            {
                lblStdMsg.Content = "Please Fill the student information correctly";
            }

            }
            catch (Exception ex)
            {
                lblStdMsg.Content = "Please fill the field correctly";
            }

        }

        private void btnimage_click(object sender, RoutedEventArgs e)
        {

            OpenFileDialog openFileDialog1 = new OpenFileDialog();

            openFileDialog1.ShowDialog();

            openFileDialog1.DefaultExt = ".jpeg";

            SFile = openFileDialog1.FileName;

            Console.WriteLine(SFile);

        }
        
        private void BtnParentImage_click( object sender , RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog1 = new OpenFileDialog();

            openFileDialog1.ShowDialog();

            openFileDialog1.DefaultExt = ".jpeg";

            PFile = openFileDialog1.FileName;

            Console.WriteLine(PFile);
        }
        private void Btnreset_click(object sender, RoutedEventArgs e)
        {
            txtParentFName.Clear();
            txtParentFOccupation.Clear();
            txtParentMName.Clear();
            txtParentMOccupation.Clear();
            txtParentNationality.Clear();
            txtParentNumber.Clear();
            txtParentPermanentAddress.Clear();
            txtParentPresentAddress.Clear();
            txtStdClass.SelectedItem = null;
            txtStdDob.Clear();
            txtStdEmail.Clear();
            txtStdFName.Clear();
            txtStdGender.SelectedItem = null;
            txtStdLName.Clear();
            txtStdReligion.Clear();
            txtStdRoll.Clear();
            txtStdSection.SelectedItem = null;
            PFile = "";
            SFile = "";
           
            

            
         }

        private void btnDStdSearch_Click(object sender, RoutedEventArgs e)
        {
            try
            { var record = new STUDENT { std_id =int.Parse ( txtDAdmitionID.Text) };
                context.STUDENTS.Attach(record);
                context.STUDENTS.Remove(record);
                context.SaveChanges();
            }
            catch (Exception ex)
            {
                lblDStdMsg.Content = "Please fill the field correctly";
            }


        }

        private void btnUStdSearch_Click(object sender, RoutedEventArgs e)
        {
            int id = int.Parse(txtUAdmitionID.Text);
            try
            {
           
                var student = context.STUDENTS.First(a => a.std_id == id);
                lblUStdMsg.Content = "Enter  new data for student";
            }
            catch (Exception ex)
            {
                lblUStdMsg.Content = "Please fill the field correctly";
            }
        }

        private void btnUStdSave_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                int id = int.Parse(txtUAdmitionID.Text);
                var student = context.STUDENTS.First(a => a.std_id == id);
                var parent = context.PARENTS.First(a => a.parent_id == student.p_id);
               

                student.fname = txtUStdFName.Text;
                student.lname = txtUStdLName.Text;
                student.std_class = txtUStdClass.Text;
                student.section = txtUStdSection.Text;
                student.gender = txtUStdGender .Text;
                student.date_of_birth = txtUStdDob.Text;
                student.roll = int.Parse(txtUStdRoll.Text);
                student.religion = txtUStdReligion.Text;
               
                student.email = txtUStdEmail.Text;


                parent.father_name = txtParentFName.Text;
                parent.mother_name = txtParentMName.Text;
                parent.father_occupation = txtParentFOccupation.Text;
                parent.mother_occupation = txtParentMOccupation.Text;
                parent.phone_number = txtParentNumber.Text;
                parent.permanent_address = txtParentPermanentAddress.Text;
                parent.present_address = txtParentPresentAddress.Text;
               
                parent.nationality = txtParentNationality.Text;


                context.SaveChanges();

            }
            catch (Exception ss)
            {
                lblUStdMsg.Content = "please fill the form correctly ";
            }
        }

        private void btnUStdReset_Click(object sender, RoutedEventArgs e)
        {

            txtUParentFName.Clear();
            txtUParentFOccupation.Clear();
            txtUParentMName.Clear();
            txtUParentMOccupation.Clear();
            txtUParentNationality.Clear();
            txtUParentNumber.Clear();
            txtUParentPermanentAddress.Clear();
            txtUParentPresentAddress.Clear();
            txtUStdClass.SelectedItem = null;
            txtUStdDob.Clear();
            txtUStdEmail.Clear();
            txtUStdFName.Clear();
            txtUStdGender.SelectedItem = null;
            txtUStdLName.Clear();
            txtUStdReligion.Clear();
            txtUStdRoll.Clear();
            txtUStdSection.SelectedItem = null;
        }

        private void btnDetailStdSearch_Click(object sender, RoutedEventArgs e)
        {
            status.Content = " ";
            try
            {
                int id = int.Parse(txtDetailAdmitionID.Text);
                var student = context.STUDENTS.First(a => a.std_id == id);
               
                lblName.Content = student.fname;
                lblClass.Content = student.std_class;
                lblEmail.Content = student.section;
                lblReligion.Content = student.religion;
                lblDob.Content = student.date_of_birth;
                lblRoll.Content = student.roll;
                lblSection.Content = student.section;
                lblGender.Content = student.gender;
                imageStudentDetail.Source = new BitmapImage( new Uri(student.picture));

            }
            catch(Exception s)
            {
                status.Content = "Please enter the correct Student Admission ID";
            }
        }
        

        private void btnAllStudent_Click(object sender, RoutedEventArgs e)
        {

            tableAllStudent.ItemsSource = context.STUDENTS.Select(x => new {x.std_id, x.fname, x.lname, x.religion, x.roll, x.std_class, x.section, x.gender, x.email, x.date_of_birth }).ToList();
        }

        private void btnShowClassStudent_Click(object sender, RoutedEventArgs e)
        {
            //int sec = int.Parse(ComboASection.Text);
            tableAllStudent.ItemsSource = context.STUDENTS.Where(x => x.std_class == ComboAClass.Text && x.section == ComboASection.Text).Select(x=>new {x.std_id, x.fname , x.lname, x.religion,x.roll,x.std_class,x.section,x.gender,x.email,x.date_of_birth }).ToList();
            
        }
    }
    
}

