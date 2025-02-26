﻿using System;
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
    /// Логика взаимодействия для listpage.xaml
    /// </summary>
    public partial class listpage : Page
    {
        public listpage()
        {
            InitializeComponent();
            mainListView.ItemsSource = Data.SportsEntities.GetContext().users.ToList();
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            if (Classes.manager.MainFrame.CanGoBack)
            {
                Classes.manager.MainFrame.GoBack();
            }
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.manager.MainFrame.Navigate(new Pages.addeditpage());
        }
    }
}
