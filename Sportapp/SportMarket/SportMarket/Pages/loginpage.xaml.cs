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

namespace SportMarket.Pages
{
    /// <summary>
    /// Логика взаимодействия для loginpage.xaml
    /// </summary>
    public partial class loginpage : Page
    {
        public loginpage()
        {
            InitializeComponent();
        }

        private void loginbutton_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder err = new StringBuilder();
            if (String.IsNullOrEmpty(LoginTextBox.Text))
            {
                err.AppendLine("Be sure you entered Login");
            }
            if (String.IsNullOrEmpty(PasPasBox.Password))
            {
                err.AppendLine("Be sure you entered Password");
            }
            if (err.Length > 0)
            {
                MessageBox.Show(err.ToString(),"Caution!", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
            else
            {
                MessageBox.Show(" ","",MessageBoxButton.OK);
                Classes.manager.MainFrame.Navigate(new Pages.listpage());
            }
        }
    }
}
