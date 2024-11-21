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

namespace SportApp.pages
{
    /// <summary>
    /// Логика взаимодействия для ListViewPage.xaml
    /// </summary>
    public partial class ListViewPage : Page
    {
        public ListViewPage()
        {
            InitializeComponent();
            MainListView.ItemsSource = data.SportsEntities.GetContext().Users.ToList();

        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            if(Classes.Manager.MainFrame.CanGoBack == true)
            {
                Classes.Manager.MainFrame.GoBack();
            }
            
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new pages.AddEditPage());
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
