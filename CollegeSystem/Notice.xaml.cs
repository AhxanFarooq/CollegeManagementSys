using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace CollegeSystem
{
    /// <summary>
    /// Interaction logic for Notice.xaml
    /// </summary>
    public partial class Notice : UserControl
    {
        CollegeDbC context = new CollegeDbC();
        public Notice()
        {
            InitializeComponent();
            noticeboard();
        }

        private void noticeboard()
        {
           
            int id = context.NOTICEs.Count();
            var name = new List<Label> { lblNoticeName1,  lblNoticeName2, lblNoticeName3 ,lblNoticeName4, lblNoticeName5 ,lblNoticeName6 };
            var date = new List<Label> { lblNoticeDate1, lblNoticeDate2 ,lblNoticeDate3, lblNoticeDate4, lblNoticeDate5 ,lblNoticeDate6};
            var title= new List<Label> { lblNoticeMsg1, lblNoticeMsg2,  lblNoticeMsg3,lblNoticeMsg4 ,lblNoticeMsg5 , lblNoticeMsg6};
            foreach (var n in name )
            {
                if(id %2==0)
                {
                    n.Foreground = Brushes.Red;
                }

                NOTICE s = context.NOTICEs.First(a => a.id == id);
                n.Content = s.posted_by;
                id--;
            }
            id = context.NOTICEs.Count();
            foreach (var d in date)
            {
                NOTICE s = context.NOTICEs.First(a => a.id == id);
                d.Content = s.post_date;
                id--;
            }
            id = context.NOTICEs.Count();

            foreach (var t in title)
            {
                NOTICE s = context.NOTICEs.First(a => a.id == id);
                t.Content = s.title;
                id--;
            }
        }

        private void btnNtcSubmit_Click(object sender, RoutedEventArgs e)
        {
            try { 
            var notice = new NOTICE
            {
                title=txtNtcTitle.Text,
                detail=txtNtcDetail.Text,
                posted_by=txtNtcPosted.Text,
                post_date= DateTime.Today.ToString("dd-MM-yyyy")
            };
            context.NOTICEs.Add(notice);
            context.SaveChanges();
            }
            catch (Exception ex)
            {
                lblNtcMsg.Content = "Please fill the field correctly";
            }
        }
    }
}
