   M S B A M L   `   `   `  ����U  QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf  5      H DCollegeSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:CollegeSystemCollegeSystem 5      ` \De.TorstenMandelkow.MetroChart, Version=0.9.5818.20693, Culture=neutral, PublicKeyToken=nullwTclr-namespace:De.TorstenMandelkow.MetroChart;assembly=De.TorstenMandelkow.MetroChartDe.TorstenMandelkow.MetroChart 5	         CollegeSystem.DashBoard   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     5      -localclr-namespace:CollegeSystem     5      k
MetroChartTclr-namespace:De.TorstenMandelkow.MetroChart;assembly=De.TorstenMandelkow.MetroChart     5	      V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	     � 	Resources  5       �� MergedDictionaries �� Source   ScrollThumbs �� 
TargetType �� Property �� Value �� 
TargetType �Name ��Name	 �� CornerRadius
 �� Triggers P� Property P� Value �� 
TargetName ]�Name ]� Thumb n�Name ]� IncreaseRepeatButton ��Name J� Opacity ]� DecreaseRepeatButton P� 
SourceName  ButtonSelectBrush  	DarkBrush �� Angle�� 5   
    5      �� 5      $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?�6%   �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?�6%   �� 5      $t npack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Primary/MaterialDesignColor.Blue.xaml?�6%   �� 5      $u opack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Accent/MaterialDesignColor.Purple.xaml?�6%   %�  &	        '�� D    �� 5      " n�6)   .�5      ��  � �� 5      �� 5      " n�6*   .R�5      � $
 Grid��6#   .+�5   "   �� $��Stretch=�6,   $��Stretch=�6J   $
��Auto��6f   $
��Auto��6s   
������ 6�   �� 5   "   $ 
Rectangle1��6)   $	 10��6=   $��Stretch=�6O   $��Stretch=�6m   $
��Auto��6�   $
��Auto��6�   #��z��6�   5      
 5      P� 5   "    �@�Tag$ 
Horizontal��69   . �5   &   �� $ 
Rectangle1��6-    � ��$
 Auto��6V   �� 5    &   $ 
Rectangle1��6-    � ��$ 7��6W   5!   #   5#      5%      5&      �� 5)      " ��6/   .�5*      ��  �@��IsFlicksEnabled .  6;   �� 5+       � ��
 �����6/   �� 5,       � ��
 �����6/   �� 5-       � ��$ 10��6*   �� 5.       � �� 5/      �� 50      " ��6*   .R�51      � $ GridRoot��6#   $��19��65   ��6@   Z� .+�52   "   ]� $ 
PART_Track��6(   $��0��6<   ��. |�.   53   &   n� 54   *   $ Thumb��60   #��z��6?   #���   6i    56   &   �� 57   *   $ PageUp��67   $��ScrollBar.PageDownCommand��6G   $ 0Q�6k   |�.  6w    59   &   �� 5:   *   $ PageDown��67   $��ScrollBar.PageUpCommand��6I   $ 0Q�6k   |�.  6w   5<   #   5=      
 5?      P� 5@   "   $ Thumb��6*    �@J�IsMouseOver . . �5A   &   �� # �  6-   $ Thumb��6Y    � ��6l   5B   #   P� 5C   "   $ Thumb��6*    �@n�
IsDragging . . �5D   &   �� # �  6-   $ Thumb��6Q    � ��6d   5E   #   P� 5G   "    � {� .  . �5H   &   �� $ Thumb��6-    � y�$ 	Collapsed=�6V   5I   #   P� 5J   "    �@��Orientation$ 
Horizontal=�6A   . �5K   &   �� $ GridRoot��6-    �@�LayoutTransform 5L   *   �� 5M   .   $	 -90Q�6>   5O   '   �� 5P   &   $ 
PART_Track��6-    �@�LayoutTransform 5Q   *   �� 5R   .   $	 -90Q�6>   5T   '   �� 5U   &    � ��$
 Auto��6>   �� 5V   &    � ��$ 12��6?   �� 5W   &   $ Thumb��6-    �@�Tag$ 
Horizontal��6O   �� 5X   &   $ PageDown��6-    � ��$ ScrollBar.PageLeftCommand��6V   �� 5Y   &   $ PageUp��6-    � ��$  ScrollBar.PageRightCommand��6T   5Z   #   5\      5^      5_      5a      .��5e      � $
��Left=�6   $	��610��6&   $��0,0,0,0q�63   $	��Top=�6D   $
��1050��6\   ���#F0F1F3.+�5f   
   ��  �� Orientation$ 
Horizontal=�6   $
��Left=�6.   $��70��6I   $	��top=�6U   $	��220��6m   $��	25,25,0,0q�6y   .+�5g      � ���#80C147$��70��6(   $��70��64   $��0,0,0,0q�6?   $
��left=�6P   .+�5h      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]   Kind$ GraduationCap=�6*   ���#FFFFFF$��23q�6T   $��25��6`   $��25��6l   5i      � 5j      ���#FFFFFF$��70��6(   $	��150��64   $��Right=�6@   .+�5k      �� -   5        $��lblTotalStd��5k      $
��Bold"�6+   $��16(�6=   $��30��6K   $��80��6W   $��Center=�6b   $��0,10,0,0q�6   $	��Top=�6�   �� 5l      $��Total Students��6   $��25��61   $	��110��6=   $
��Bold"�6I   $��12(�6[   $��Center=�6i   $��0,40,0,0q�6�   $	��Top=�6�   5n      5o      �� 5p   
   $ 
Horizontal=�6   $
��Left=�6.   $��70��6I   $	��top=�6U   $	��220��6m   $��
270,25,0,0q�6y   .+�5q      � ���#FDD214$��70��6(   $��70��64   $��0,0,0,0q�6?   $
��left=�6P   .+�5r        $ Account=�6*   ���#FFFFFF$��23q�6N   $��25��6Z   $��25��6f   5s      � 5t      ���#FFFFFF$��70��6(   $	��150��64   $��Right=�6@   .+�5u      �� -   5        $��	lblParent��5u      $
��Bold"�6)   $��16(�6;   $��30��6I   $��80��6U   $��Center=�6`   $��0,10,0,0q�6}   $	��Top=�6�   �� 5v      $��Total Parents��6   $��25��60   $	��110��6<   $
��Bold"�6H   $��12(�6Z   $��Center=�6h   $��0,40,0,0q�6�   $	��Top=�6�   5x      5y      �� 5z   
   $ 
Horizontal=�6   $
��Left=�6.   $��70��6I   $	��top=�6U   $	��220��6m   $��
25,120,0,0q�6y   .+�5{      � ���#1EA2E5$��70��6(   $��70��64   $��0,0,0,0q�6?   $
��left=�6P   .+�5|        $ Teacher=�6*   ���#FFFFFF$��23q�6N   $��25��6Z   $��25��6f   5}      � 5~      ���#FFFFFF$��70��6(   $	��150��64   $��Right=�6@   .+�5      �� -   5        $��
lblTeacher��5      $
��Bold"�6*   $��16(�6<   $��30��6J   $��80��6V   $��Center=�6a   $��0,10,0,0q�6~   $	��Top=�6�   �� 5�      $��Total Teacher��6   $��25��60   $	��110��6<   $
��Bold"�6H   $��12(�6Z   $��Center=�6h   $��0,40,0,0q�6�   $	��Top=�6�   5�      5�      �� 5�   
   $ 
Horizontal=�6   $
��Left=�6.   $��70��6I   $	��top=�6U   $	��220��6m   $��270,120,0,0q�6y   .+�5�      � ���#00BED4$��70��6(   $��70��64   $��0,0,0,0q�6?   $
��left=�6P   .+�5�        $ Money=�6*   ���#FFFFFF$��23q�6L   $��25��6X   $��25��6d   5�      � 5�      ���#FFFFFF$��70��6(   $	��150��64   $��Right=�6@   .+�5�      �� -   5        $��
lblEarning��5�      $
��Bold"�6*   $��16(�6<   $��30��6J   $��80��6V   $��Center=�6a   $��0,10,0,0q�6~   $	��Top=�6�   �� 5�      $��Yearly Total Earning��6   $��27��67   $	��130��6C   $
��Bold"�6O   $��12(�6a   $��Center=�6o   $��0,40,0,0q�6�   $	��Top=�6�   5�      5�      � 5�   
   $
��left=�6   ���#FFFFFF$	��386��6?   $��
22,214,0,0q�6L   $	��Top=�6`   $	��240��6x   .+�5�      �� $��Percentage of Fee paid��6   ���#80C1476L      LiveCharts.Wpf.Gauge  5�      $��0��6   $��5,40,5,5q�6%      Uses360Mode .    From$ 0Q�5�      	   To$	 100Q�6      Value 6&   �� *FeePercentage+   GaugeRenderTransform 5�      V� 5�      .~�5�      �� $ 90Q�6*   67   �� 5�       �� ScaleX$ -1Q�6)   67   5�      5�      5�      � 5�   
   $
��left=�6   ���#FFFFFF$	��386��6?   $��262,214,0,0q�6L   $	��Top=�6a   $	��240��6y   .+�5�      �� $��Total Expenses��6   ���#FDD2146D     5�      $��0��6   $��5,40,5,5q�6%    . $ 0Q�5�      $ 50000Q�6   $��3��6L    6(   �� *ExpensePercentage+ 5�      V� 5�      .~�5�      �� $ 90Q�6*   67   �� 5�      $ -1Q�6)   67   5�      5�      5�      � 5�   
   $
��Left=�6   $	��320��6*   $��
550,25,0,0q�67   $	��Top=�6K   $	��479��6c   ���#FFFFFF.+�5�      #   LiveCharts.Wpf.CartesianChart  &    LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$ Right=�6E       Series  6!   �� *SeriesCollection+!   AxisY! 5�         LiveCharts.Wpf.Axis  "   Title$" Sales��6   #   LabelFormatter# 6-   �� *
YFormatter+6U   $   AxisX$ 5�        $" Month��6   %   Labels% 6-   �� *Labels+6I   5�      5�      � 5�   
   $
��Left=�6   $	��250��6*   $��516,350,0,0q�67   $	��Top=�6L   $	��237��6d   ���#FFFFFF.+�5�      �� .��5�      �� .+�5�      �� $��Notice Board��6   $��Italic$�63   $��20(�6G   ���#042954$��Center=�6j   �� 5�      -   5        $��lblNoticeDate1��5�      $��22��62   $	��214��6>   $��
16/02/2019��6J   $��10(�6_   ���#B5B5B56�   �� 5�      -   5        $��lblNoticeName1��5�      $��26��62   $��Kashif Mehmood��6>   $��12(�6W   ���#613CAC$��Oblique$�6z   $��Medium"�6�   6�   �� 5�      -   5        $��lblNoticeMsg1��5�      $��59��61   .��5�      �� &$College management system is desktop�� 6I   system6\   5�      �� 5�      -   5        $��lblNoticeDate2��5�      $��22��62   $	��214��6>   $��
16/02/2019��6J   $��10(�6_   ���#B5B5B56�   �� 5�      -	   5        $��lblNoticeName2��5�      $��26��62   $��Muhammad Ahsan Farooq��6>   $��12(�6^   ���#613CAC$��Oblique$�6�   $��Medium"�6�   6�   �� 5�      -
   5        $��lblNoticeMsg2��5�      $��59��61   .��5�      �� &$College management system is desktop�� 6I   system6\   5�      �� 5�      -   5        $��lblNoticeDate3��5�      $��22��62   $	��214��6>   $��
16/02/2019��6J   $��10(�6_   ���#B5B5B56�   �� 5�      -   5        $��lblNoticeName3��5�      $��26��62   $��Kashif Mehmood��6>   $��12(�6W   ���#613CAC$��Oblique$�6z   $��Medium"�6�   6�   �� 5�      -   5        $��lblNoticeMsg3��5�      $��59��61   .��5�      �� &$College management system is desktop�� 6I   system6\   5�      �� 5�      -   5        $��lblNoticeDate4��5�      $��22��62   $	��214��6>   $��
16/02/2019��6J   $��10(�6_   ���#B5B5B56�   �� 5�      -   5        $��lblNoticeName4��5�      $��26��62   $��Muhammad Ahsan Farooq��6>   $��12(�6^   ���#613CAC$��Oblique$�6�   $��Medium"�6�   6�   �� 5�      -   5        $��lblNoticeMsg4��5�      $��59��61   .��5�      �� &$College management system is desktop�� 6I   system6\   5�      �� 5�      -   5        $��lblNoticeDate5��5�      $��22��62   $	��214��6>   $��
16/02/2019��6J   $��10(�6_   ���#B5B5B56�   �� 5�      -   5        $��lblNoticeName5��5�      $��26��62   $��Kashif Mehmood��6>   $��12(�6W   ���#613CAC$��Oblique$�6z   $��Medium"�6�   6�   �� 5�      -   5        $��lblNoticeMsg5��5�      $��59��61   .��5�      �� &$College management system is desktop�� 6I   system6\   5�      �� 5�      -   5        $��lblNoticeDate6��5�      $��22��62   $	��214��6>   $��
16/02/2019��6J   $��10(�6_   ���#B5B5B56�   �� 5�      -   5        $��lblNoticeName6��5�      $��26��62   $��Muhammad Ahsan Farooq��6>   $��12(�6^   ���#613CAC$��Oblique$�6�   $��Medium"�6�   6�   �� 5�      -   5        $��lblNoticeMsg6��5�      $��59��61   .��5�      �� &$College management system is desktop�� 6I   system6\   5�      5�      5�      5�      � 5�   
   $
��Left=�6   $	��250��6*   $��767,350,0,0q�67   $	��Top=�6L   $	��273��6d   ���#FFFFFF.+�5�         LiveCharts.Wpf.PieChart  -   5        $��Chart��5�      $ Right=�5�      &   InnerRadius$	& 100Q�6.   $��27,15,-11,15q�6@     5�   (   �� *ACollection+'   ChartLegend' 5�      "   LiveCharts.Wpf.DefaultLegend  5�      (   
BulletSize$( 20Q�6(   6:   )   DataTooltip) 5�      #	   LiveCharts.Wpf.DefaultTooltip	  5�      * 	  
BulletSize$* 20Q�6)   6;   5�      5�      5�      5�      