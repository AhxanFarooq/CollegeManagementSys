   M S B A M L   `   `   `  ����H  DCollegeSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:CollegeSystemCollegeSystem  5           CollegeSystem.ClassRoutine   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:CollegeSystem     5      V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5        � 	Resources  5
       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?�6%   �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?�6%   �� 5      $t npack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Primary/MaterialDesignColor.Blue.xaml?�6%   �� 5      $u opack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Accent/MaterialDesignColor.Purple.xaml?�6%   %    5      .��5      � $
��Left=�6   $	��610��6&   $��0,0,0,0q�63   $	��Top=�6D   $
��1050��6\   ���#F0F1F3.+�5   
   � $
��Left=�6   $	��570��6*   $��	20,20,0,0q�67   $	��Top=�6J   $	��300��6b   ���#FFFFFF.+�5      �� $��Manage Class Routtine��6   $��17(�64   ���#042954���#FFFFFF$��Center=�6l   $��0,10,0,0q�6�   $	��Top=�6�   $	��190��6�   $��35��6�   �� 5      -   5        $��	txtCrtDay��5      $
��Left=�6'   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
  Day��6B   $��14(�6h   ���#F0F1F3$��30��6�   $��	40,70,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��237��6�   $��0,0,0,0q�6�   .��6�   5      �� 5      -   5        $��txtCrtSubject��5      $
��Left=�6+   $  Subject Type��6F   $��14(�6u   ���#042954���#F0F1F3$��30��6�   $��
40,140,0,0q�6�   $	��Top=�6�   $	��237��6�   $��0,0,0,0q�6�   .��6  5       �� 5!      -   5        $��txtCrtClass��5!      $
��Left=�6*   $  Class��6E   $��14(�6m   ���#042954���#F0F1F3$��30��6�   $��
40,210,0,0q�6�   $	��Top=�6�   $	��237��6�   $��0,0,0,0q�6�   .@�5#      �� .��6   FSC6$   �� 5$      .��6   FA6#   �� 5%      .��6   BA6#   �� 5&      .��6   I.COM6&   �� 5'      .��6   B.COM6&   5(      �� 5)      -   5        $��txtCrtSection��5)      $
��Left=�6,   $  Section��6G   $��14(�6q   ���#042954���#F0F1F3$��30��6�   $��
40,280,0,0q�6�   $	��Top=�6�   $	��237��6�   $��0,0,0,0q�6�   .@�5+      �� .��6   A6"   �� 5,      .��6   B6"   �� 5-      .��6   C6"   5.      �� 50      -   5        $��
txtCrtTime��50      $
��Left=�6(   $  Time(11:00-12:00)��6C   $��14(�6w   ���#042954���#F0F1F3$��30��6�   $��
40,420,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��237��6�   $��0,0,0,0q�6
  .��6$  52      �� 53      -   5        $��txtCrtTeacher��53      $
��Left=�6+   $  Teacher��6F   $��14(�6p   ���#042954���#F0F1F3$��30��6�   $��
40,350,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��237��6�   $��0,0,0,0q�6  .��6  55      �� 56      -   5        $��	lblCrtMsg��56      $
��Left=�6&   $��
92,450,0,0q�6A   $	��Top=�6U   $��31��6m   $	��168��6y   �� 57      -   5        $��btnCrtSubmit��57      $��Submit��6)   $	��0.5q�6:   $
��Left=�6P   $��
40,500,0,0q�6k   $	��Top=�6�   $	��100��6�   ���#F8C504$��30��6�   ���#FFFFFF59      �� 5:      -	   5        $��btnCrtReset��5:      $��Reset��6(   $	��0.5q�68   $
��Left=�6N   $��180,500,0,0q�6i   $	��Top=�6�   $	��100��6�   ���#042954$��30��6�   ���#FFFFFF5<      5>      � 5@   
   $
��Left=�6   $	��570��6*   $��
340,20,0,0q�67   $	��Top=�6K   $	��690��6c   ���#FFFFFF.+�5A      �� $��Class Routine��6   $��17(�6,   ���#042954���#FFFFFF$��Center=�6d   $��0,20,0,0q�6�   $	��Top=�6�   $	��120��6�   $��35��6�   &   System.Windows.Controls.DataGrid  5C      -
   5        $��tableClassRoutine��5C   m      AutoGenerateColumns . $	��490��63   $
��Left=�6@   $��0,80,0,0q�6[   $	��Top=�6�   $	��690��6�   5D      5E      5F      