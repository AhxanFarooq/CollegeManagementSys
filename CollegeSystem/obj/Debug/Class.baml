   M S B A M L   `   `   `  ����H  DCollegeSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:CollegeSystemCollegeSystem  5      E ADragablz, Version=0.0.3.203, Culture=neutral, PublicKeyToken=null5(clr-namespace:Dragablz;assembly=DragablzDragablz 5	   	       CollegeSystem.Class   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:CollegeSystem     5      V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      7dragablz(clr-namespace:Dragablz;assembly=Dragablz  5	   	     � 	Resources  5       �� MergedDictionaries �� Source   Key  
Primary100 �� Color  Primary100Foreground  
Primary500  Primary500Foreground  
Primary700  Primary700Foreground  	Accent200  Accent200Foreground  Dragablz.TabablzControl �� 
TargetType %	 !MaterialDesignTabablzControlStyle �� BasedOn�� 5   
    5      �� 5       5      �� 5      $b \pack://application:,,,/MaterialDesignColors;component/Themes/MaterialDesignColor.Indigo.xaml?�6-   �� 5      PrimaryHueLightBrush  # [ 6C   �� 5      "PrimaryHueLightForegroundBrush  # [ 6M   �� 5      PrimaryHueMidBrush  # [ 6A   �� 5       PrimaryHueMidForegroundBrush  # [ 6K   �� 5      PrimaryHueDarkBrush  # [ 6B   �� 5      !PrimaryHueDarkForegroundBrush  # [ 6L   5      �� 5"       5$      �� 5%      $b \pack://application:,,,/MaterialDesignColors;component/Themes/MaterialDesignColor.Yellow.xaml?�6-   �� 5)      SecondaryAccentBrush  # [ 6C   �� 5*      "SecondaryAccentForegroundBrush  # [ 6M   5+      �� 5.      $J Dpack://application:,,,/Dragablz;component/Themes/materialdesign.xaml?�6%   �� 50      $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?�6%   �� 51      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?�6%   �� 52      $t npack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Primary/MaterialDesignColor.Blue.xaml?�6%   �� 53      $u opack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Accent/MaterialDesignColor.Purple.xaml?�6%   %0   '        7 	 �� 58      "  6   8   6B   5;      .��5?      � $
��Left=�6   $	��610��6&   $��0,0,0,0q�63   $	��Top=�6D   $
��1050��6\   ���#F0F1F3.+�5@   
        InterTabController 5A      !  Dragablz.InterTabController  5B      .@�5D      �� $��ADD NEW CLASS��6   .��5E      � $
��Left=�6   $	��300��62   $��	20,20,0,0q�6?   $	��Top=�6R   $
��1010��6j   ���#FFFFFF.+�5F      �� $��Class Information��6   $��17(�68   ���#042954���#FFFFFF$
��left=�6p   $��	10,10,0,0q�6�   $	��Top=�6�   $	��160��6�   $��40��6�   �� 5H      -   5        $��txtClsTeacherName��5H      $
��Left=�67   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$   Teacher Name��6R   $��14(�6�   ���#F0F1F3$��30��6�   $��	10,70,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6�   .��6  5J      �� 5K      -   5        $��txtClsNumName��5K      $
��Left=�63   $   Class Numeric Name��6N   $��14(�6�   ���#042954���#F0F1F3$��30��6�   $��
520,70,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��200��6  $��0,0,0,0q�6  .��61  5M      �� 5N      -   5        $��txtClsGender��5N      $
��Left=�63   $   Gender��6N   $��14(�6x   ���#042954���#F0F1F3$��30��6�   $��
270,70,0,0q�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6�   .@�5P      �� .��6'   M6*   �� 5Q      .��6'   F6*   5R      �� 5S      -   5        $��txtClsClass��5S      $
 Wrap=�61   $
��Left=�6F   $   Class��6a   $��14(�6�   ���#042954���#F0F1F3$��30��6�   $��
790,70,0,0q�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6
  .��6$  5V      �� 5W      -   5        $��txtClsSubject��5W      $
��Left=�63   $ 	  Subject��6N   $��14(�6y   ���#042954���#F0F1F3$��30��6�   $��
10,140,0,0q�6�   $	��Top=�6�   $	��200��6�   $��0,0,0,0q�6�   .��6  5Z      �� 5]      -   5        $��
btnClsSave��5]      $
��Save��6/   $	��0.5q�6>   $
��Left=�6T   $��
10,220,0,0q�6o   $	��Top=�6�   $	��100��6�   ���#F8C504$��30��6�   ���#FFFFFF5_      �� 5`      -   5        $��btnClsReset��5`      $��Reset��60   $	��0.5q�6@   $
��Left=�6V   $��130,220,0,0q�6q   $	��Top=�6�   $	��100��6�   ���#042954$��30��6�   ���#FFFFFF5b      �� 5c      -   5        $��	lblClsMsg��5c      $
��Left=�6-   $��330,220,0,0q�6H   
���  ��$	��Top=�6n   5e      5g      �� 5i      $��	ALL CLASS��6   .��5j      � $
��Left=�6   $	��540��62   $��	20,20,0,0q�6?   $	��Top=�6R   $
��1010��6j   ���#FFFFFF.+�5k      �� $��Class Detail��6   $��17(�63   ���#042954���#FFFFFF$��Center=�6k   $��0,30,0,0q�6�   $	��Top=�6�   $	��120��6�   $��40��6�   &   System.Windows.Controls.DataGrid  5l      -	   5        $��tableAllClasses��5l   u   	   AutoGenerateColumns	 . $	��440��6:   $
��Left=�6G   $��	0,100,0,0q�6b   $	��Top=�6�   $
��1010��6�   5m      5n      5o      5p      5r      