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
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder err = new StringBuilder();

            try
            {
                if (String.IsNullOrEmpty(LoginTextBox.Text))
                {
                    err.AppendLine("Введите Логин");
                }
                if (String.IsNullOrEmpty(PasswordPasBox.Password))
                {
                    err.AppendLine("Введите Пароль");
                }

                if (err.Length > 0)
                {
                    MessageBox.Show(err.ToString(), "Внимание!", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    MessageBox.Show("Проверки пока нет, вы вошли в аккаунт", "Внимание!", MessageBoxButton.OK, MessageBoxImage.Information);
                    Classes.Manager.MainFrame.Navigate(new pages.ListViewPage());
                }


            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString(), "Возникло исключение!", MessageBoxButton.OK, MessageBoxImage.Error);
            }

        }
    }
}
