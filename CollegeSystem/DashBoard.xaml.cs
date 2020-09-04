using LiveCharts;
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
using LiveCharts.Wpf;
using LiveCharts.Defaults;

namespace CollegeSystem
{
    /// <summary>
    /// Interaction logic for DashBoard.xaml
    /// </summary>
    public partial class DashBoard : UserControl
    {
        CollegeDbC context = new CollegeDbC();
        public SeriesCollection SeriesCollection { get; set; }
        public string[] Labels { get; set; }
        public Func<double, string> YFormatter
        {
            get; set;
        }
        public int FeePercentage { get; private set; }
        public int ExpensePercentage { get; private set; }
        public SeriesCollection Acollection { get; set; }
        public SeriesCollection ACollection { get; set; }

        public DashBoard()
        {
            InitializeComponent();
            string p = "p";
            Initialize();
            FeePercentage = context.PAYMENTS.Where(x => x.status != "U" || x.status != "u").Count();
            var w = context.EXPENSES.Sum(x => x.exp_amount);

            ////////////////////////////////////////////////////////////////////////////////////////////

            ExpensePercentage = (int)w;

            SeriesCollection = new SeriesCollection
            {
                new LineSeries
                {
                    Title = "Expenses",
                    Values = new ChartValues<double> { 4, 6, 5, 2 ,4 }
                },
                new LineSeries
                {
                    Title = "Fee",
                    Values = new ChartValues<double> { 6, 7, 3, 4 ,6 },
                    PointGeometry = null
                },
                new LineSeries
                {
                    Title = "Defaulters",
                    Values = new ChartValues<double> { 4,2,7,2,7 },
                    PointGeometry = DefaultGeometries.Square,
                    PointGeometrySize = 15
                }
            };

            Labels = new[] { "Jan", "Feb", "Mar", "Apr", "May", "June", "july", "august", "September", "october", "november", "December" };
            YFormatter = value => value.ToString("C");



            DataContext = this;

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            donut();
        }

        private void donut()
        {
          ACollection = new SeriesCollection
            {
                new PieSeries
                {
                    Title = "Total Room",
                    Values = new ChartValues<ObservableValue> { new ObservableValue(context.ROOMS.Count()) },
                    DataLabels = true
                },
                new PieSeries
                {
                    Title = "Vacant",
                    Values = new ChartValues<ObservableValue> { new ObservableValue(context.SEATVACANTS.Count()) },
                    DataLabels = true
                },
                new PieSeries
                {
                    Title = "Allocated",
                    Values = new ChartValues<ObservableValue> { new ObservableValue(context.SEATALLOTS.Count()) },
                    DataLabels = true
                }


            };

            DataContext = this;

            Chart.Update(true, true);
        }

        private void Initialize()
        {
            //count parents

            lblParent.Content = context.PARENTS.Count();
            lblTeacher.Content = context.TEACHERS.Count();
            lblTotalStd.Content = context.STUDENTS.Count();
            lblEarning.Content = (context.PAYMENTS.Sum(x => (float)x.pay_amount));

            /////////////////////////////////////////////////////////////////////////

            int id = context.NOTICEs.Count();
            var name = new List<Label> { lblNoticeName1, lblNoticeName2, lblNoticeName3, lblNoticeName4, lblNoticeName5, lblNoticeName6 };
            var date = new List<Label> { lblNoticeDate1, lblNoticeDate2, lblNoticeDate3, lblNoticeDate4, lblNoticeDate5, lblNoticeDate6 };
            var title = new List<Label> { lblNoticeMsg1, lblNoticeMsg2, lblNoticeMsg3, lblNoticeMsg4, lblNoticeMsg5, lblNoticeMsg6 };
            foreach (var n in name)
            {
                if (id % 2 == 0)
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


    
    }
}