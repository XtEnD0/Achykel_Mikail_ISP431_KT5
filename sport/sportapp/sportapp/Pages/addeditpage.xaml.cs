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

namespace sportapp.Pages
{
    /// <summary>
    /// Логика взаимодействия для addeditpage.xaml
    /// </summary>
    public partial class addeditpage : Page
    {
        public addeditpage()
        {
            InitializeComponent();
            SexTB.ItemsSource = Data.SportsEntities.GetContext().sex.ToList();
            RoleTB.ItemsSource = Data.SportsEntities.GetContext().roles.ToList();
        }
        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            if (Classes.manager.MainFrame.CanGoBack)
            {
                Classes.manager.MainFrame.GoBack();
            }
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder err = new StringBuilder();
            if (String.IsNullOrEmpty(NameTB.Text) || NameTB.Text == "Full Name")
            {
                err.AppendLine("please enter the Full Name");
            }
            if (String.IsNullOrEmpty(BirthDateTB.Text) || BirthDateTB.Text == "Date of Birth")
            {
                err.AppendLine("please enter the Date of Birth");
            }
            if (String.IsNullOrEmpty(PhoneTB.Text) || PhoneTB.Text == "Phone Number")
            {
                err.AppendLine("please enter the Phone Number");
            }
            //if (String.IsNullOrEmpty(NameTB.Text) || NameTB.Text == "Full Name")
            //{
            //    err.AppendLine("please enter the Full Name");
            //}
            //if (String.IsNullOrEmpty(NameTB.Text) || NameTB.Text == "Full Name")
            //{
            //    err.AppendLine("please enter the Full Name");
            //}
            //if (String.IsNullOrEmpty(NameTB.Text) || NameTB.Text == "Full Name")
            //{
            //    err.AppendLine("please enter the Full Name");
            //}
        }

    }
}
