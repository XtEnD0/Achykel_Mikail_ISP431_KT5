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
            
        }

    }
}
