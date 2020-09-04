using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace CollegeSystem
{
    /// <summary>
    /// Interaction logic for Hostel.xaml
    /// </summary>
    public partial class Hostel : UserControl
    {
        CollegeDbC context = new CollegeDbC();
        public Hostel()
        {
            InitializeComponent();
            tableAllRoom.ItemsSource = context.ROOMS.Select(x => new { x.HOSTEL.hostel_name, x.room_number, x.no_of_bed,x.room_type }).ToList();
            tableAlocatedSeat.ItemsSource = context.SEATALLOTS.Select(x => new { x.HOSTEL.hostel_name, x.room_number, x.seat_number }).ToList();
            tableVctSeat.ItemsSource = context.SEATVACANTS.Select(x=> new { x.HOSTEL.hostel_name, x.room_number, x.seat_number }).ToList();
        }

        private void btnHtlSubmit_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var room = new ROOM
                {
                    hostel_id = int.Parse(txtHostelId.Text),
                    room_number = txtRoomNo.Text,
                    room_type = txtRoomType.Text,
                    no_of_bed = txtNoOfBed.Text,
                    cost_per_bed = txtCost.Text

                };
                context.ROOMS.Add(room);
                context.SaveChanges();
            }
            catch(Exception ex)
            {
                lbladdroom.Content = "Please fill the field correctly";
            }

        }

        private void btnHtlReset_Click(object sender, RoutedEventArgs e)
        {
             
            txtHostelId.Clear();
            txtRoomNo.Clear();
            txtRoomType.Clear();
            txtNoOfBed.Clear();
            txtCost.Clear();
        }

        private void btnAltSubmit_Click(object sender, RoutedEventArgs e)
        {
            

            var allotment = new SEATALLOT
            {
                room_number = txtAltRoomNo.Text,
                hostel_id = int.Parse(txtAltHostelId.Text),
                seat_number = txtAltSeatNo.Text,
                std_id = int.Parse(txtAltStdId.Text)

            };
            context.SEATALLOTS.Add(allotment);
            context.SaveChanges();

            tableAlocatedSeat.ItemsSource = tableVctSeat.ItemsSource = context.SEATVACANTS.Select(x => new { x.HOSTEL.hostel_name, x.room_number, x.seat_number }).ToList();


        }

        private void btnAltReset_Click(object sender, RoutedEventArgs e)
        {
            txtAltStdId.Clear();
            txtHostelId.Clear();
            txtNoOfBed.Clear();
            txtAltStdId.Clear();
        }

        private void btnVctSubmit_Click(object sender, RoutedEventArgs e)
        {
           
            if (context.SEATALLOTS.Any(x => x.hostel_id == int.Parse(txtVctHostelId.Text) && x.room_number == txtVctRoomNo.Text && x.seat_number == txtVctSeatNo.Text && x.std_id == int.Parse(txtVctStdId.Text)))
            {
                var vs = context.SEATALLOTS.First(x => x.room_number == txtVctRoomNo.Text && x.seat_number == txtVctSeatNo.Text);
                try
                {
                    var record = new SEATALLOT {  id= vs.id };
                    context.SEATALLOTS.Attach(record);
                    context.SEATALLOTS.Remove(record);
                    context.SaveChanges();
                }
                catch (Exception ex)
                {
                    lbladdroom.Content = "Please fill the field correctly";
                }
            }
            tableVctSeat.ItemsSource = context.SEATVACANTS.ToList();
        }

        private void btnVctReset_Click(object sender, RoutedEventArgs e)
        {
            txtVctHostelId.Clear();
            txtVctRoomNo.Clear();
            txtVctSeatNo.Clear();
            txtVctStdId.Clear();
            
        }
    }
}
