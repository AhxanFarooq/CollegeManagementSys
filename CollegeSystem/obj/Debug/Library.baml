   M S B A M L   `   `   `  ����H  DCollegeSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:CollegeSystemCollegeSystem  5      E ADragablz, Version=0.0.3.203, Culture=neutral, PublicKeyToken=null5(clr-namespace:Dragablz;assembly=DragablzDragablz 5	   	       CollegeSystem.Library   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:CollegeSystem     5      V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      7dragablz(clr-namespace:Dragablz;assembly=Dragablz  5	   	     � 	Resources  5       �� MergedDictionaries �� Source   Key  
Primary100 �� Color  Primary100Foreground  
Primary500  Primary500Foreground  
Primary700  Primary700Foreground  	Accent200  Accent200Foreground  Dragablz.TabablzControl �� 
TargetType %	 !MaterialDesignTabablzControlStyle �� BasedOn�� 5   
    5      �� 5       5      �� 5      $b \pack://application:,,,/MaterialDesignColors;component/Themes/MaterialDesignColor.Indigo.xaml?�6-   �� 5      PrimaryHueLightBrush  # [ 6C   �� 5      "PrimaryHueLightForegroundBrush  # [ 6M   �� 5      PrimaryHueMidBrush  # [ 6A   �� 5       PrimaryHueMidForegroundBrush  # [ 6K   �� 5      PrimaryHueDarkBrush  # [ 6B   �� 5      !PrimaryHueDarkForegroundBrush  # [ 6L   5      �� 5!       5#      �� 5$      $b \pack://application:,,,/MaterialDesignColors;component/Themes/MaterialDesignColor.Yellow.xaml?�6-   �� 5(      SecondaryAccentBrush  # [ 6C   �� 5)      "SecondaryAccentForegroundBrush  # [ 6M   5*      �� 5-      $J Dpack://application:,,,/Dragablz;component/Themes/materialdesign.xaml?�6%   �� 5/      $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?�6%   �� 50      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?�6%   �� 51      $t npack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Primary/MaterialDesignColor.Blue.xaml?�6%   �� 52      $u opack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Accent/MaterialDesignColor.Purple.xaml?�6%   %0   '        7 	 �� 57      "  6   8   6B   5:      .��5<      � $
��Left=�6   $	��610��6&   $��0,0,0,0q�63   $	��Top=�6D   $
��1050��6\   ���#F0F1F3.+�5>   
        InterTabController 5?      !  Dragablz.InterTabController  5@      .@�5B      �� $��
ISSUE BOOK��6   .��5C      � $
��Left=�6   $	��350��62   $��350,150,0,0q�6?   $	��Top=�6T   $	��300��6l   ���#FFFFFF.+�5D      �� $��
Issue Book��6   $��17(�61   ���#042954���#FFFFFF$
��left=�6i   $��	90,10,0,0q�6�   $	��Top=�6�   $	��100��6�   $��40��6�   �� 5F      -   5        $��txtIssueBookId��5F      $
��Left=�64   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 	  Book Id��6O   $��14(�6z   ���#F0F1F3$��30��6�   $��	40,70,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6�   .��6  5H      �� 5I      -   5        $��txtIssueStdId��5I      $
��Left=�63   $   Admition#��6N   $��14(�6{   ���#042954���#F0F1F3$��30��6�   $��
40,140,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��200��6  $��0,0,0,0q�6  .��6(  5K      �� 5L      -   5        $��txtIssueDate��5L      $
��Left=�62   $   Issue Date��6M   $��14(�6{   ���#042954���#F0F1F3$��30��6�   $��
40,210,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��200��6  $��0,0,0,0q�6  .��6(  5N      �� 5O      -   5        $��lblIssueMsg��5O      $
��Left=�60   $��140,250,0,0q�6K   $	��Top=�6`   $��31��6x   $	��120��6�   �� 5P      -   5        $��btnIssueBook��5P      $��
Issue Book��61   $	��0.5q�6F   $
��Left=�6\   $��100,280,0,0q�6w   $	��Top=�6�   $	��100��6�   ���#F8C504$��30��6�   ���#FFFFFF5R      5S      5T      �� 5U      $��RETURN BOOK��6   .��5V      � $
��Left=�6   $	��350��62   $��350,150,0,0q�6?   $	��Top=�6T   $	��300��6l   ���#FFFFFF.+�5W      �� $��Return Book��6   $��17(�62   ���#042954���#FFFFFF$
��left=�6j   $��	90,10,0,0q�6�   $	��Top=�6�   $	��120��6�   $��40��6�   �� 5Y      -   5        $��txtRtnIssueId��5Y      $
��Left=�63   $ 
  Issue Id��6N   $��14(�6z   ���#F0F1F3$��30��6�   $��	40,80,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6�   .��6  5[      �� 5]      -   5        $��
txtRtnDate��5]      $
��Left=�60   $   Return Date��6K   $��14(�6z   ���#042954���#F0F1F3$��30��6�   $��
40,160,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��200��6  $��0,0,0,0q�6  .��6'  5_      �� 5`      -   5        $��	lblRtnMsg��5`      $
��Left=�6.   $��140,200,0,0q�6I   $	��Top=�6^   $��31��6v   $	��120��6�   �� 5b      -	   5        $��btnReturnBook��5b      $��Return Book��62   $	��0.5q�6H   $
��Left=�6^   $��
90,240,0,0q�6y   $	��Top=�6�   $	��120��6�   ���#F8C504$��30��6�   ���#FFFFFF5d      5e      5f      �� 5g      $��ADD BOOK��6   .��5h      � $
��Left=�6   $	��300��62   $��	20,20,0,0q�6?   $	��Top=�6R   $
��1010��6j   ���#FFFFFF.+�5i      �� $��Add Book��6   $��17(�6/   ���#042954���#FFFFFF$
��left=�6g   $��	20,10,0,0q�6�   $	��Top=�6�   $	��100��6�   $��40��6�   �� 5j      -
   5        $��txtBookName��5j      $
��Left=�61   $   Book Name��6L   $��14(�6y   ���#042954���#F0F1F3$��30��6�   $��	20,80,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6  .��6%  5l      �� 5m      -   5        $��txtPublisher��5m      $
��Left=�62   $   Publisher Name��6M   $��14(�6   ���#042954���#F0F1F3$��30��6�   $��
270,80,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��200��6  $��0,0,0,0q�6  .��6,  5o      �� 5p      -   5        $��	txtWriter��5p      $
��Left=�6/   $   Writer Name��6J   $��14(�6y   ���#042954���#F0F1F3$��30��6�   $��
520,80,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��200��6   $��0,0,0,0q�6  .��6&  5r      �� 5s      -   5        $��txtPhone��5s      $
��Left=�6.   $   Phone Number��6I   $��14(�6y   ���#042954���#F0F1F3$��30��6�   $��
780,80,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��200��6   $��0,0,0,0q�6  .��6&  5u      �� 5v      -   5        $��txtNoOfCopies��5v      $
��Left=�63   $   Number of Copies��6N   $��14(�6�   ���#042954���#F0F1F3$��30��6�   $��
20,160,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��200��6	  $��0,0,0,0q�6  .��6/  5x      �� 5y      -   5        $��txtPubAddress��5y      $
��Left=�63   $   Publisher Address��6N   $��14(�6�   ���#042954���#F0F1F3$��30��6�   $��270,160,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��200��6  $��0,0,0,0q�6  .��61  5{      �� 5|      -   5        $��txtIdNo��5|      $
��Left=�6-   $   ID No��6H   $��14(�6q   ���#042954���#F0F1F3$��30��6�   $��520,160,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6  .��6  5~      �� 5      -   5        $��
btnStdSave��5      $
��Save��6/   $	��0.5q�6>   $
��Left=�6T   $��
10,240,0,0q�6o   $	��Top=�6�   $	��100��6�   ���#F8C504$��30��6�   ���#FFFFFF5�      �� 5�      -   5        $��btnStdReset��5�      $��Reset��60   $	��0.5q�6@   $
��Left=�6V   $��130,240,0,0q�6q   $	��Top=�6�   $	��100��6�   ���#042954$��30��6�   ���#FFFFFF5�      �� 5�      -   5        $��	lblAddMsg��5�      $
��Left=�6-   $��270,240,0,0q�6H   
���  ��$	��Top=�6n   5�      5�      �� 5�      $��DELETE BOOK��6   .��5�      � $
��Left=�6   $	��300��62   $��350,100,0,0q�6?   $	��Top=�6T   $	��300��6l   ���#FFFFFF.+�5�      �� $��Delete Book��6   $��17(�62   ���#042954���#FFFFFF$��Center=�6j   $��0,10,0,0q�6�   $	��Top=�6�   $	��110��6�   $��40��6�   �� 5�      -   5        $��txtDltBookId��5�      $
��Left=�62   $   Book ID No��6M   $��14(�6{   ���#F0F1F3$��30��6�   $��
50,100,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6�   .��6  5�      �� 5�      -   5        $��	btnDelete��5�      $��Delete Book��6.   ���#F8C504$��30��6Y   ���#FFFFFF$	��0.5q�6z   $
��Left=�6�   $��
90,210,0,0q�6�   $	��Top=�6�   $	��130��6�   5�      �� 5�      -   5        $��	lblDltMsg��5�      $
��Left=�6-   $��
90,260,0,0q�6H   
���  ��$	��Top=�6m   5�      5�      �� 5�      $��ALL BOOK��6   .��5�      � $
��Left=�6   $	��540��62   $��	20,20,0,0q�6?   $	��Top=�6R   $
��1010��6j   ���#FFFFFF.+�5�      �� $��All Book��6   $��17(�6/   ���#042954���#FFFFFF$��Center=�6g   $��0,40,0,0q�6�   $	��Top=�6�   $	��100��6�   $��40��6�   &   System.Windows.Controls.DataGrid  5�      -   5        $��tableAllBooks��5�   u   	   AutoGenerateColumns	 . $	��440��6:   $
��Left=�6G   $��	0,100,0,0q�6b   $	��Top=�6�   $
��1010��6�   5�      5�      5�      5�      5�      