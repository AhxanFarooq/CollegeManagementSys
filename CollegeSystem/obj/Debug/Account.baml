   M S B A M L   `   `   `  ����H  DCollegeSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:CollegeSystemCollegeSystem  5      E ADragablz, Version=0.0.3.203, Culture=neutral, PublicKeyToken=null5(clr-namespace:Dragablz;assembly=DragablzDragablz 5	   	       CollegeSystem.Account   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:CollegeSystem     5      V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      7dragablz(clr-namespace:Dragablz;assembly=Dragablz  5	   	     � 	Resources  5       �� MergedDictionaries �� Source   Key  
Primary100 �� Color  Primary100Foreground  
Primary500  Primary500Foreground  
Primary700  Primary700Foreground  	Accent200  Accent200Foreground  Dragablz.TabablzControl �� 
TargetType %	 !MaterialDesignTabablzControlStyle �� BasedOn�� 5   
    5      �� 5       5      �� 5      $b \pack://application:,,,/MaterialDesignColors;component/Themes/MaterialDesignColor.Indigo.xaml?�6-   �� 5      PrimaryHueLightBrush  # [ 6C   �� 5      "PrimaryHueLightForegroundBrush  # [ 6M   �� 5      PrimaryHueMidBrush  # [ 6A   �� 5       PrimaryHueMidForegroundBrush  # [ 6K   �� 5      PrimaryHueDarkBrush  # [ 6B   �� 5      !PrimaryHueDarkForegroundBrush  # [ 6L   5      �� 5!       5#      �� 5$      $b \pack://application:,,,/MaterialDesignColors;component/Themes/MaterialDesignColor.Yellow.xaml?�6-   �� 5(      SecondaryAccentBrush  # [ 6C   �� 5)      "SecondaryAccentForegroundBrush  # [ 6M   5*      �� 5-      $J Dpack://application:,,,/Dragablz;component/Themes/materialdesign.xaml?�6%   �� 5/      $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?�6%   �� 50      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?�6%   �� 51      $t npack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Primary/MaterialDesignColor.Blue.xaml?�6%   �� 52      $u opack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Accent/MaterialDesignColor.Purple.xaml?�6%   %0   '        7 	 �� 57      "  6   8   6B   5:      .��5<      � $
��Left=�6   $	��610��6&   $��0,0,0,0q�63   $	��Top=�6D   $
��1050��6\   ���#F0F1F3.+�5=   
        InterTabController 5>      !  Dragablz.InterTabController  5?      .@�5A      �� $��CREATE PAYMENT��6   .��5B      � $
��Left=�6   $	��350��62   $��	20,20,0,0q�6?   $	��Top=�6R   $
��1010��6j   ���#FFFFFF.+�5C      �� $��Payment Information��6   $��17(�6:   ���#042954���#FFFFFF$
��left=�6r   $��	10,10,0,0q�6�   $	��Top=�6�   $	��170��6�   $��40��6�   �� 5E      -   5        $��
txtPayName��5E      $
��Left=�60   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$   Name��6K   $��14(�6s   ���#F0F1F3$��30��6�   $��	10,70,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6�   .��6	  5G      �� 5H      -   5        $��txtPayId��5H      $
��Left=�6.   $   Admition#��6I   $��14(�6v   ���#042954���#F0F1F3$��30��6�   $��
270,70,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6	  .��6#  5J      �� 5K      -   5        $��txtPayClass��5K      $
��Left=�61   $   Class��6L   $��14(�6u   ���#042954���#F0F1F3$��30��6�   $��
520,70,0,0q�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6�   .��6  5N      �� 5O      -   5        $��txtPaySection��5O      $
��Left=�63   $ 	  Section��6N   $��14(�6y   ���#042954���#F0F1F3$��30��6�   $��
790,70,0,0q�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6�   .��6  5R      �� 5S      -   5        $��txtPayTotalFee��5S      $
��Left=�64   $   Total Fee��6O   $��14(�6|   ���#042954���#F0F1F3$��30��6�   $��
10,140,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��200��6  $��0,0,0,0q�6  .��6*  5V      �� 5X      -   5        $��txtPayStatus��5X      $
��Left=�63   $   Status��6N   $��14(�6x   ���#042954���#F0F1F3$��30��6�   $��270,140,0,0q�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6�   .@�5Y      �� .��6'   P6*   �� 5Z      .��6'   U6*   5[      �� 5_      -   5        $��
btnPaySave��5_      $
��Save��6/   $	��0.5q�6>   $
��Left=�6T   $��
10,230,0,0q�6o   $	��Top=�6�   $	��100��6�   ���#F8C504$��30��6�   ���#FFFFFF5a      �� 5b      -   5        $��btnPayReset��5b      $��Reset��60   $	��0.5q�6@   $
��Left=�6V   $��130,230,0,0q�6q   $	��Top=�6�   $	��100��6�   ���#042954$��30��6�   ���#FFFFFF5d      �� 5e      -	   5        $��	lblPayMsg��5e      $
��Left=�6-   $��330,230,0,0q�6H   
���  ��$	��Top=�6n   5g      5h      �� 5i      $��FEE COLLECTION��6   .��5j      � $
��Left=�6   $	��540��62   $��	20,20,0,0q�6?   $	��Top=�6R   $
��1010��6j   ���#FFFFFF.+�5l      �� $��Fee Collection��6   $��20(�65   ���#042954���#FFFFFF$��Center=�6m   $��0,40,0,0q�6�   $	��Top=�6�   $	��150��6�   $��40��6�   &   System.Windows.Controls.DataGrid  5n      -
   5        $��tableFeeCollection��5n   u   	   AutoGenerateColumns	 . $	��440��6:   $
��Left=�6G   $��	0,100,0,0q�6b   $	��Top=�6�   $
��1010��6�   5o      5p      �� 5q      $��ADD EXPENSES��6   .��5r      � $
��Left=�6   $	��350��62   $��	20,20,0,0q�6?   $	��Top=�6R   $
��1010��6j   ���#FFFFFF.+�5s      �� $��Add New Expenses��6   $��17(�67   ���#042954���#FFFFFF$
��left=�6o   $��	10,10,0,0q�6�   $	��Top=�6�   $	��160��6�   $��40��6�   �� 5u      -   5        $��
txtExpName��5u      $
��Left=�60   $   Name��6K   $��14(�6s   ���#F0F1F3$��30��6�   $��	10,70,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6�   .��6	  5w      �� 5y      -   5        $��
txtExpType��5y      $
��Left=�60   $   Expense Type��6K   $
 Wrap=�6{   $��14(�6�   ���#042954���#F0F1F3$��30��6�   $��
270,70,0,0q�6�   $	��Top=�6�   $	��200��6  $��0,0,0,0q�6  .��6(  5{      �� 5|      -   5        $��txtExpAmount��5|      $
��Left=�62   $   Amount��6M   $
 Wrap=�6w   $��14(�6�   ���#042954���#F0F1F3$��30��6�   $��
790,70,0,0q�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6
  .��6$  5      �� 5�      -   5        $��txtExpPhone��5�      $
��Left=�61   $   Phone��6L   $��14(�6u   ���#042954���#F0F1F3$��30��6�   $��
10,140,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6	  .��6#  5�      �� 5�      -   5        $��txtExpEmail��5�      $
��Left=�61   $  Email ��6L   $��14(�6u   ���#042954���#F0F1F3$��30��6�   $��270,140,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6	  .��6#  5�      �� 5�      -   5        $��txtExpStatus��5�      $
 Wrap=�62   $
��Left=�6F   $   Status��6a   $��14(�6�   ���#042954���#F0F1F3$��30��6�   $��
520,70,0,0q�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6
  .��6$  5�      �� 5�      -   5        $��
btnExpSave��5�      $
��Save��6/   $	��0.5q�6>   $
��Left=�6T   $��
10,230,0,0q�6o   $	��Top=�6�   $	��100��6�   ���#F8C504$��30��6�   ���#FFFFFF5�      �� 5�      -   5        $��btnExpReset��5�      $��Reset��60   $	��0.5q�6@   $
��Left=�6V   $��130,230,0,0q�6q   $	��Top=�6�   $	��100��6�   ���#042954$��30��6�   ���#FFFFFF5�      �� 5�      -   5        $��	lblExpMsg��5�      $��Added Successfully��6-   $
��Left=�6J   $��330,230,0,0q�6e   
���  ��$	��Top=�6�   5�      5�      �� 5�      $��ALL EXPENSES��6   .��5�      � $
��Left=�6   $	��540��62   $��	20,20,0,0q�6?   $	��Top=�6R   $
��1010��6j   ���#FFFFFF.+�5�      �� $��All Expenses��6   $��20(�63   ���#042954���#FFFFFF$��Center=�6k   $��0,40,0,0q�6�   $	��Top=�6�   $	��150��6�   $��40��6�     5�      -   5        $��tableAllExpenses��5�   u   	 . $	��440��6:   $
��Left=�6G   $��	0,100,0,0q�6b   $	��Top=�6�   $
��1010��6�   5�      5�      5�      5�      5�      